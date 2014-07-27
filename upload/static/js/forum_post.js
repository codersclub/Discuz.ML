/*
	[Discuz!] (C)2001-2099 Comsenz Inc.
	This is NOT a freeware, use is subject to license terms

	$Id: forum_post.js 33695 2013-08-03 04:39:22Z nemohou $
	Modified by Valery Votintsev
*/

var forum_post_inited = true;
var postSubmited = false;
var AID = {0:1,1:1};
var UPLOADSTATUS = -1;
var UPLOADFAILED = UPLOADCOMPLETE = AUTOPOST = 0;
var CURRENTATTACH = '0';
var FAILEDATTACHS = '';
var UPLOADWINRECALL = null;
var imgexts = typeof imgexts == 'undefined' ? 'jpg, jpeg, gif, png, bmp' : imgexts;
var ATTACHORIMAGE = '0';
var STATUSMSG = {
/*vot*/	'-1' : lng['internal_error'],
/*vot*/	'0' :  lng['upload_ok'],
/*vot*/	'1' :  lng['ext_not_supported'],
/*vot*/	'2' :  lng['attach_big'],
/*vot*/	'3' :  lng['attach_group_big'],
/*vot*/	'4' :  lng['ext_not_supported'],
/*vot*/	'5' :  lng['attach_type_big'],
/*vot*/	'6' :  lng['attach_daily_big'],
/*vot*/	'7' :  lng['select_image_files']+' (' + imgexts + ')',
/*vot*/	'8' :  lng['can_not_save_attach'],
/*vot*/	'9' :  lng['invalid_file'],
/*vot*/	'10' : lng['illegal_operation'],
/*vot*/	'11' : lng['today_upload_large']
};

EXTRAFUNC['validator'] = [];

function checkFocus() {
	var obj = wysiwyg ? editwin : textobj;
	if(!obj.hasfocus) {
		obj.focus();
	}
}

function ctlent(event) {
/*vot*/	if(postSubmited == false && (event.ctrlKey && event.keyCode == 13) || (event.altKey && event.keyCode == 83) && $('postsubmit')) { // Enter or Alt-S
		if(in_array($('postsubmit').name, ['topicsubmit', 'replysubmit', 'editsubmit']) && !validate($('postform'))) {
			doane(event);
			return;
		}
		postSubmited = true;
		$('postsubmit').disabled = true;
		$('postform').submit();
	}
/*vot*/	if(event.keyCode == 9) { // TAB
		doane(event);
	}
}

function checklength(theform) {
	var message = wysiwyg ? html2bbcode(getEditorContents()) : theform.message.value;
	if(!theform.parseurloff.checked) {
		message = parseurl(message);
	}
/*vot*/	showDialog(lng['current_length']+': ' + mb_strlen(message) + ' '+lng['bytes']+', ' + (postmaxchars != 0 ? lng['system_limit']+': ' + postminchars + ' '+lng['up_to']+' ' + postmaxchars + ' '+lng['bytes']+'.' : ''), 'notice', lng['check_length']);
}

if(!tradepost) {
	var tradepost = 0;
}

function validate(theform) {
	var message = wysiwyg ? html2bbcode(getEditorContents()) : theform.message.value;
	if(!theform.parseurloff.checked) {
		message = parseurl(message);
	}
	if(($('postsubmit').name != 'replysubmit' && !($('postsubmit').name == 'editsubmit' && !isfirstpost) && theform.subject.value == "") || !sortid && !special && trim(message) == "") {
/*vot*/		showError(lng['enter_content']);
		return false;
/*vot*/	} else if(theform.subject.value.length > 80) {
/*vot*/		showError(lng['title_long']);
		return false;
	}
	if(in_array($('postsubmit').name, ['topicsubmit', 'editsubmit'])) {
		if(theform.typeid && (theform.typeid.options && theform.typeid.options[theform.typeid.selectedIndex].value == 0) && typerequired) {
/*vot*/			showError(lng['select_category']);
			return false;
		}
		if(theform.sortid && (theform.sortid.options && theform.sortid.options[theform.sortid.selectedIndex].value == 0) && sortrequired) {
/*vot*/			showError(lng['select_category_info']);
			return false;
		}
	}
	for(i in EXTRAFUNC['validator']) {
		try {
			eval('var v = ' + EXTRAFUNC['validator'][i] + '()');
			if(!v) {
				return false;
			}
		} catch(e) {}
	}

	if(!disablepostctrl && !sortid && !special && ((postminchars != 0 && mb_strlen(message) < postminchars) || (postmaxchars != 0 && mb_strlen(message) > postmaxchars))) {
/*vot*/		showError(lng['content_long'] + lng['current_length']+': ' + mb_strlen(message) + ' '+lng['bytes']+'\n'+lng['system_limit']+': ' + postminchars + ' '+lng['up_to']+' ' + postmaxchars + ' '+lng['bytes']);
		return false;
	}
	if(UPLOADSTATUS == 0) {
/*vot*/		if(!confirm(lng['ignore_pending_attach'])) {
			return false;
		}
	} else if(UPLOADSTATUS == 1) {
/*vot*/		showDialog(lng['still_uploading'], 'notice');
		AUTOPOST = 1;
		return false;
	}
	if(isfirstpost && $('adddynamic') != null && $('adddynamic').checked && $('postsave') != null && isNaN(parseInt($('postsave').value)) && ($('readperm') != null && $('readperm').value || $('price') != null && $('price').value)) {
/*vot*/		if(confirm(lng['feed_add_confirm']) == false) {
			return false;
		}
	}
	theform.message.value = message;
	if($('postsubmit').name == 'editsubmit') {
		checkpostrule_post(theform);
		return false;
	} else if(in_array($('postsubmit').name, ['topicsubmit', 'replysubmit'])) {
		if(seccodecheck || secqaacheck) {
			var chk = 1, chkv = '';
			if(secqaacheck) {
				chkv = $('checksecqaaverify_' + theform.secqaahash.value).innerHTML;
				if(chkv.indexOf('loading') != -1) {
					setTimeout(function () { validate(theform); }, 100);
					chk = 0;
				} else if(chkv.indexOf('check_right') == -1) {
/*vot*/					showError(lng['q&a_invalid']);
					chk = 0;
				}
			}
			if(seccodecheck) {
				chkv = $('checkseccodeverify_' + theform.seccodehash.value).innerHTML;
				if(chkv.indexOf('loading') !== -1) {
					setTimeout(function () { validate(theform); }, 100);
					chk = 0;
				} else if(chkv.indexOf('check_right') === -1) {
/*vot*/					showError(lng['code_invalid']);
					chk = 0;
				}
			}
			if(chk) {
				checkpostrule_post(theform);
			}
		} else {
			checkpostrule_post(theform);
		}
		return false;
	}
}

function checkpostrule_post(theform) {
	if(!seccodecheck && !secqaacheck && !theform.sechash) {
		var x = new Ajax();
		x.get('forum.php?mod=ajax&action=checkpostrule&ac=' + postaction + '&inajax=yes', function(s) {
			if(s) {
				ajaxinnerhtml($('seccheck'), s);
				evalscript(s);
				seccodecheck = true;
			} else {
				postsubmit(theform);
			}
		});
	} else {
		postsubmit(theform);
	}
}

function postsubmit(theform) {
	if($(editorid + '_attachlist')) {
		$('postbox').appendChild($(editorid + '_attachlist'));
		$(editorid + '_attachlist').style.display = 'none';
	}
	if($(editorid + '_imgattachlist')) {
		$('postbox').appendChild($(editorid + '_imgattachlist'));
		$(editorid + '_imgattachlist').style.display = 'none';
	}
	hideMenu();

	theform.replysubmit ? theform.replysubmit.disabled = true : (theform.editsubmit ? theform.editsubmit.disabled = true : theform.topicsubmit.disabled = true);
	theform.submit();
}

function relatekw(subject, message) {
	if(isUndefined(subject) || subject == -1) {
		subject = $('subject').value;
		subject = subject.replace(/<\/?[^>]+>|\[\/?.+?\]|"/ig, "");
		subject = subject.replace(/\s{2,}/ig, ' ');
	}
	if(isUndefined(message) || message == -1) {
		message = getEditorContents();
		message = message.replace(/<\/?[^>]+>|\[\/?.+?\]|"/ig, "");
		message = message.replace(/\s{2,}/ig, ' ');
	}
	subject = (BROWSER.ie && document.charset == 'utf-8' ? encodeURIComponent(subject) : subject);
	message = (BROWSER.ie && document.charset == 'utf-8' ? encodeURIComponent(message) : message);
	message = message.replace(/&/ig, '', message).substr(0, 500);
	ajaxget('forum.php?mod=relatekw&subjectenc=' + subject + '&messageenc=' + message, 'tagselect');
}

function switchicon(iconid, obj) {
	$('iconid').value = iconid;
	$('icon_img').src = obj.src;
	hideMenu();
}

function clearContent() {
	if(wysiwyg) {
		editdoc.body.innerHTML = BROWSER.firefox ? '<br />' : '';
	} else {
		textobj.value = '';
	}
}

function uploadNextAttach() {
	var str = $('attachframe').contentWindow.document.body.innerHTML;
	if(str == '') return;
	var arr = str.split('|');
	var att = CURRENTATTACH.split('|');
	var sizelimit = '';
	if(arr[4] == 'ban') {
/*vot*/		sizelimit = '('+lng['attach_type_disabled']+')';
	} else if(arr[4] == 'perday') {
/*vot*/		sizelimit = '('+lng['attach_max'] + ' ' + arr[5] + ' ' + lng['bytes'] + ')';
	} else if(arr[4] > 0) {
/*vot*/		sizelimit = '('+lng['attach_max'] + ' ' + arr[4] + ' ' + lng['bytes'] + ')';
	}
	uploadAttach(parseInt(att[0]), arr[0] == 'DISCUZUPLOAD' ? parseInt(arr[1]) : -1, att[1], sizelimit);
}

function uploadAttach(curId, statusid, prefix, sizelimit) {
	prefix = isUndefined(prefix) ? '' : prefix;
	var nextId = 0;
	for(var i = 0; i < AID[prefix ? 1 : 0] - 1; i++) {
		if($(prefix + 'attachform_' + i)) {
			nextId = i;
			if(curId == 0) {
				break;
			} else {
				if(i > curId) {
					break;
				}
			}
		}
	}
	if(nextId == 0) {
		return;
	}
	CURRENTATTACH = nextId + '|' + prefix;
	if(curId > 0) {
		if(statusid == 0) {
			UPLOADCOMPLETE++;
		} else {
			FAILEDATTACHS += '<br />' + mb_cutstr($(prefix + 'attachnew_' + curId).value.substr($(prefix + 'attachnew_' + curId).value.replace(/\\/g, '/').lastIndexOf('/') + 1), 25) + ': ' + STATUSMSG[statusid] + sizelimit;
			UPLOADFAILED++;
		}
		$(prefix + 'cpdel_' + curId).innerHTML = '<img src="' + IMGDIR + '/check_' + (statusid == 0 ? 'right' : 'error') + '.gif" alt="' + STATUSMSG[statusid] + '" />';
		if(nextId == curId || in_array(statusid, [6, 8])) {
			if(prefix == 'img') {
				updateImageList();
			} else {
				updateAttachList();
			}
			if(UPLOADFAILED > 0) {
/*vot*/				showDialog(lng['upload_finished']+' '+lng['successfull']+' ' + UPLOADCOMPLETE + ', '+lng['failed']+' ' + UPLOADFAILED + ', '+lng['ones']+': ' + FAILEDATTACHS);
				FAILEDATTACHS = '';
			}
			UPLOADSTATUS = 2;
			for(var i = 0; i < AID[prefix ? 1 : 0] - 1; i++) {
				if($(prefix + 'attachform_' + i)) {
					reAddAttach(prefix, i)
				}
			}
			$(prefix + 'uploadbtn').style.display = '';
			$(prefix + 'uploading').style.display = 'none';
			if(AUTOPOST) {
				hideMenu();
				validate($('postform'));
			} else if(UPLOADFAILED == 0 && (prefix == 'img' || prefix == '')) {
/*vot*/				showDialog(lng['upload_finished'], 'right', null, null, 0, null, null, null, null, 3);
			}
			UPLOADFAILED = UPLOADCOMPLETE = 0;
			CURRENTATTACH = '0';
			FAILEDATTACHS = '';
			return;
		}
	} else {
		$(prefix + 'uploadbtn').style.display = 'none';
		$(prefix + 'uploading').style.display = '';
	}
/*vot*/	$(prefix + 'cpdel_' + nextId).innerHTML = '<img src="' + IMGDIR + '/loading.gif" alt="'+lng['uploading']+'" />';
	UPLOADSTATUS = 1;
	$(prefix + 'attachform_' + nextId).submit();
}

function addAttach(prefix) {
	var id = AID[prefix ? 1 : 0];
	var tags, newnode, i;
	prefix = isUndefined(prefix) ? '' : prefix;
	newnode = $(prefix + 'attachbtnhidden').firstChild.cloneNode(true);
	tags = newnode.getElementsByTagName('input');
	for(i = 0;i < tags.length;i++) {
		if(tags[i].name == 'Filedata') {
			tags[i].id = prefix + 'attachnew_' + id;
			tags[i].onchange = function() {insertAttach(prefix, id);};
			tags[i].unselectable = 'on';
		} else if(tags[i].name == 'attachid') {
			tags[i].value = id;
		}
	}
	tags = newnode.getElementsByTagName('form');
	tags[0].name = tags[0].id = prefix + 'attachform_' + id;
	$(prefix + 'attachbtn').appendChild(newnode);
	newnode = $(prefix + 'attachbodyhidden').firstChild.cloneNode(true);
	tags = newnode.getElementsByTagName('input');
	for(i = 0;i < tags.length;i++) {
		if(tags[i].name == prefix + 'localid[]') {
			tags[i].value = id;
		}
	}
	tags = newnode.getElementsByTagName('span');
	for(i = 0;i < tags.length;i++) {
		if(tags[i].id == prefix + 'localfile[]') {
			tags[i].id = prefix + 'localfile_' + id;
		} else if(tags[i].id == prefix + 'cpdel[]') {
			tags[i].id = prefix + 'cpdel_' + id;
		} else if(tags[i].id == prefix + 'localno[]') {
			tags[i].id = prefix + 'localno_' + id;
		} else if(tags[i].id == prefix + 'deschidden[]') {
			tags[i].id = prefix + 'deschidden_' + id;
		}
	}
	AID[prefix ? 1 : 0]++;
	newnode.style.display = 'none';
	$(prefix + 'attachbody').appendChild(newnode);
}

function insertAttach(prefix, id) {
	var path = $(prefix + 'attachnew_' + id).value;
	var extpos = path.lastIndexOf('.');
	var ext = extpos == -1 ? '' : path.substr(extpos + 1, path.length).toLowerCase();
	var re = new RegExp("(^|\\s|,)" + ext + "($|\\s|,)", "ig");
	var localfile = $(prefix + 'attachnew_' + id).value.substr($(prefix + 'attachnew_' + id).value.replace(/\\/g, '/').lastIndexOf('/') + 1);
	var filename = mb_cutstr(localfile, 30);

	if(path == '') {
		return;
	}
	if(extensions != '' && (re.exec(extensions) == null || ext == '')) {
		reAddAttach(prefix, id);
/*vot*/		showError(lng['sorry_ext_not_supported']);
		return;
	}
	if(prefix == 'img' && imgexts.indexOf(ext) == -1) {
		reAddAttach(prefix, id);
/*vot*/		showError(lng['select_image_files']+' (' + imgexts + ')');
		return;
	}

/*vot*/	$(prefix + 'cpdel_' + id).innerHTML = '<a href="javascript:;" class="d" onclick="reAddAttach(\'' + prefix + '\', ' + id + ')">'+lng['delete']+'</a>';
	$(prefix + 'localfile_' + id).innerHTML = '<span>' + filename + '</span>';
	$(prefix + 'attachnew_' + id).style.display = 'none';
	$(prefix + 'deschidden_' + id).style.display = '';
	$(prefix + 'deschidden_' + id).title = localfile;
	$(prefix + 'localno_' + id).parentNode.parentNode.style.display = '';
	addAttach(prefix);
	UPLOADSTATUS = 0;
}

function reAddAttach(prefix, id) {
	$(prefix + 'attachbody').removeChild($(prefix + 'localno_' + id).parentNode.parentNode);
	$(prefix + 'attachbtn').removeChild($(prefix + 'attachnew_' + id).parentNode.parentNode);
	$(prefix + 'attachbody').innerHTML == '' && addAttach(prefix);
	$('localimgpreview_' + id) ? document.body.removeChild($('localimgpreview_' + id)) : null;
}

function delAttach(id, type) {
	var ids = {};
	if(typeof id == 'number') {
		ids[id] = id;
	} else {
		ids = id;
	}
	for(id in ids) {
		if($('attach_' + id)) {
			$('attach_' + id).style.display = 'none';
			ATTACHNUM['attach' + (type ? 'un' : '') + 'used']--;
			updateattachnum('attach');
		}
	}
	appendAttachDel(ids);
}

function delImgAttach(id, type) {
	var ids = {};
	if(typeof id == 'number') {
		ids[id] = id;
	} else {
		ids = id;
	}
	for(id in ids) {
		if($('image_td_' + id)) {
			$('image_td_' + id).className = 'imgdeleted';
			$('image_' + id).onclick = null;
			$('image_desc_' + id).disabled = true;
			ATTACHNUM['image' + (type ? 'un' : '') + 'used']--;
			updateattachnum('image');
		}
	}
	appendAttachDel(ids);
}

function appendAttachDel(ids) {
	if(!ids) {
		return;
	}
	var aids = '';
	for(id in ids) {
		aids += '&aids[]=' + id;
	}
	var x = new Ajax();
	x.get('forum.php?mod=ajax&action=deleteattach&inajax=yes&tid=' + (typeof tid == 'undefined' ? 0 : tid) + '&pid=' + (typeof pid == 'undefined' ? 0 : pid) + aids + ($('modthreadkey') ? '&modthreadkey=' + $('modthreadkey').value : ''), function() {});
	if($('delattachop')) {
		$('delattachop').value = 1;
	}
}

function updateAttach(aid) {
	objupdate = $('attachupdate'+aid);
	obj = $('attach' + aid);
	if(!objupdate.innerHTML) {
		obj.style.display = 'none';
/*vot*/		objupdate.innerHTML = '<input type="file" name="attachupdate[paid' + aid + ']"><a href="javascript:;" onclick="updateAttach(' + aid + ')">'+lng['cancel']+'</a>';
	} else {
		obj.style.display = '';
		objupdate.innerHTML = '';
	}
}

function updateattachnum(type) {
	ATTACHNUM[type + 'used'] = ATTACHNUM[type + 'used'] >= 0 ? ATTACHNUM[type + 'used'] : 0;
	ATTACHNUM[type + 'unused'] = ATTACHNUM[type + 'unused'] >= 0 ? ATTACHNUM[type + 'unused'] : 0;
	var num = ATTACHNUM[type + 'used'] + ATTACHNUM[type + 'unused'];
	if(num) {
		if($(editorid + '_' + type)) {
/*vot*/			$(editorid + '_' + type).title = lng['contains']+' ' + num + (type == 'image' ? ' '+lng['img_attached_num'] : ' '+lng['files attached_num']);
		}
		if($(editorid + '_' + type + 'n')) {
			$(editorid + '_' + type + 'n').style.display = '';
		}
		ATTACHORIMAGE = 1;
	} else {
		if($(editorid + '_' + type)) {
/*vot*/			$(editorid + '_' + type).title = type == 'image' ? lng['images'] : lng['attachments'];
		}
		if($(editorid + '_' + type + 'n')) {
			$(editorid + '_' + type + 'n').style.display = 'none';
		}
	}
}

function swfHandler(action, type) {
	if(action == 2) {
		if(type == 'image') {
			updateImageList();
		} else {
			updateAttachList();
		}
	}
}

function updateAttachList(action, aids) {
	ajaxget('forum.php?mod=ajax&action=attachlist' + (!action ? '&posttime=' + $('posttime').value : (!aids ? '' : '&aids=' + aids)) + (!fid ? '' : '&fid=' + fid), 'attachlist');
	switchAttachbutton('attachlist');$('attach_tblheader').style.display = $('attach_notice').style.display = '';
}

function updateImageList(action, aids) {
	ajaxget('forum.php?mod=ajax&action=imagelist' + (!action ? '&pid=' + pid + '&posttime=' + $('posttime').value : (!aids ? '' : '&aids=' + aids)) + (!fid ? '' : '&fid=' + fid), 'imgattachlist');
	switchImagebutton('imgattachlist');$('imgattach_notice').style.display = '';
}

function updateDownImageList(msg) {
	hideMenu('fwin_dialog', 'dialog');
	if(msg == '') {
/*vot*/		showError(lng['no_remote_attach']);
	} else {
		ajaxget('forum.php?mod=ajax&action=imagelist&pid=' + pid + '&posttime=' + $('posttime').value + (!fid ? '' : '&fid=' + fid), 'imgattachlist', null, null, null, function(){if(wysiwyg) {editdoc.body.innerHTML = msg;switchEditor(0);switchEditor(1)} else {textobj.value = msg;}});
		switchImagebutton('imgattachlist');$('imgattach_notice').style.display = '';
/*vot*/		showDialog(lng['remote_attach_loaded'], 'right', null, null, 0, null, null, null, null, 3);
	}
}

function switchButton(btn, type) {
	var btnpre = editorid + '_btn_';
	if(!$(btnpre + btn) || !$(editorid + '_' + btn)) {
		return;
	}
	var tabs = $(editorid + '_' + type + '_ctrl').getElementsByTagName('LI');
	$(btnpre + btn).style.display = '';
	$(editorid + '_' + btn).style.display = '';
	$(btnpre + btn).className = 'current';
	var btni = '';
	for(i = 0;i < tabs.length;i++) {
		if(tabs[i].id.indexOf(btnpre) !== -1) {
			btni = tabs[i].id.substr(btnpre.length);
		}
		if(btni != btn) {
			if(!$(editorid + '_' + btni) || !$(editorid + '_btn_' + btni)) {
				continue;
			}
			$(editorid + '_' + btni).style.display = 'none';
			$(editorid + '_btn_' + btni).className = '';
		}
	}
}

function uploadWindowstart() {
	$('uploadwindowing').style.visibility = 'visible';
}

function uploadWindowload() {
	$('uploadwindowing').style.visibility = 'hidden';
	var str = $('uploadattachframe').contentWindow.document.body.innerHTML;
	if(str == '') return;
	var arr = str.split('|');
	if(arr[0] == 'DISCUZUPLOAD' && arr[2] == 0) {
		UPLOADWINRECALL(arr[3], arr[5], arr[6]);
		hideWindow('upload', 0);
	} else {
		var sizelimit = '';
		if(arr[7] == 'ban') {
/*vot*/			sizelimit = '('+lng['attach_type_disabled']+')';
		} else if(arr[7] == 'perday') {
/*vot*/			sizelimit = '('+lng['attach_max']+' ' + arr[8] + ' '+lng['bytes']+')';
		} else if(arr[7] > 0) {
/*vot*/			sizelimit = '('+lng['attach_max']+' ' + arr[7] + ' '+lng['bytes']+')';
		}
		showError(STATUSMSG[arr[2]] + sizelimit);
	}
	if($('attachlimitnotice')) {
		ajaxget('forum.php?mod=ajax&action=updateattachlimit&fid=' + fid, 'attachlimitnotice');
	}
}

function uploadWindow(recall, type) {
	var type = isUndefined(type) ? 'image' : type;
	UPLOADWINRECALL = recall;
	showWindow('upload', 'forum.php?mod=misc&action=upload&fid=' + fid + '&type=' + type, 'get', 0, {'zindex':601});
}

function updatetradeattach(aid, url, attachurl) {
	$('tradeaid').value = aid;
	$('tradeattach_image').innerHTML = '<img src="' + attachurl + '/' + url + '" class="spimg" />';
	ATTACHORIMAGE = 1;
}

function updateactivityattach(aid, url, attachurl) {
	$('activityaid').value = aid;
	$('activityattach_image').innerHTML = '<img src="' + attachurl + '/' + url + '" class="spimg" />';
	ATTACHORIMAGE = 1;
}

function updatesortattach(aid, url, attachurl, identifier) {
	$('sortaid_' + identifier).value = aid;
	$('sortattachurl_' + identifier).value = attachurl + '/' + url;
	$('sortattach_image_' + identifier).innerHTML = '<img src="' + attachurl + '/' + url + '" class="spimg" />';
	ATTACHORIMAGE = 1;
}

function switchpollm(swt) {
	t = $('pollchecked').checked && swt ? 2 : 1;
	var v = '';
	for(var i = 0; i < $('postform').elements.length; i++) {
		var e = $('postform').elements[i];
		if(!isUndefined(e.name)) {
			if(e.name.match('^polloption')) {
				if(t == 2 && e.tagName == 'INPUT') {
					v += e.value + '\n';
				} else if(t == 1 && e.tagName == 'TEXTAREA') {
					v += e.value;
				}
			}
		}
	}
	if(t == 1) {
		var a = v.split('\n');
		var pcount = 0;
		for(var i = 0; i < $('postform').elements.length; i++) {
			var e = $('postform').elements[i];
			if(!isUndefined(e.name)) {
				if(e.name.match('^polloption')) {
					pcount++;
					if(e.tagName == 'INPUT') e.value = '';
				}
			}
		}
		for(var i = 0; i < a.length - pcount + 2; i++) {
			addpolloption();
		}
		var ii = 0;
		for(var i = 0; i < $('postform').elements.length; i++) {
			var e = $('postform').elements[i];
			if(!isUndefined(e.name)) {
				if(e.name.match('^polloption') && e.tagName == 'INPUT' && a[ii]) {
					e.value = a[ii++];
				}
			}
		}
	} else if(t == 2) {
		$('postform').polloptions.value = trim(v);

	}
	$('postform').tpolloption.value = t;
	if(swt) {
		display('pollm_c_1');
		display('pollm_c_2');
	}
}

function addpolloption() {
	if(curoptions < maxoptions) {
		var imgid = 'newpoll_'+curnumber;
		var proid = 'pollUploadProgress_'+curnumber;
		var pollstr = $('polloption_hidden').innerHTML.replace('newpoll', imgid);
		pollstr = pollstr.replace('pollUploadProgress', proid);
		$('polloption_new').outerHTML = '<p>' + pollstr + '</p>' + $('polloption_new').outerHTML;
		curoptions++;
		curnumber++;
		addUploadEvent(imgid, proid)

	} else {
/*vot*/		$('polloption_new').outerHTML = '<span>'+lng['vote_max_reached']+maxoptions+'</span>';
	}
}

function delpolloption(obj) {
	obj.parentNode.parentNode.removeChild(obj.parentNode);
	curoptions--;
}

function insertsave(pid) {
	var x = new Ajax();
	x.get('forum.php?mod=misc&action=loadsave&inajax=yes&pid=' + pid + '&type=' + wysiwyg, function(str, x) {
		insertText(str, str.length, 0);
	});
}

function userdataoption(op) {
	if(!op) {
		saveUserdata('forum_'+discuz_uid, '');
		display('rstnotice');
	} else {
		loadData();
		checkFocus();
	}
	doane();
}

function attachoption(type, op) {
	if(!op) {
		if(type == 'attach') {
			delAttach(ATTACHUNUSEDAID, 1);
			ATTACHNUM['attachunused'] = 0;
			display('attachnotice_attach');
		} else {
			delImgAttach(IMGUNUSEDAID, 1);
			ATTACHNUM['imageunused'] = 0;
			display('attachnotice_img');
		}
	} else if(op == 1) {
		var obj = $('unusedwin') ? $('unusedwin') : $('unusedlist_' + type);
		list = obj.getElementsByTagName('INPUT'), aids = '';
		for(i = 0;i < list.length;i++) {
			if(list[i].name.match('unused') && list[i].checked) {
				aids += '|' + list[i].value;
			}
		}
		if(aids) {
			if(type == 'attach') {
				updateAttachList(1, aids);
			} else {
				list = $('imgattachlist').getElementsByTagName('TD');
				re = /^image\_td\_(\d+)$/;
				for(i = 0;i < list.length;i++) {
					var matches = re.exec(list[i].id);
					if(matches != null) {
						aids += '|' + matches[1];
					}
				}
				updateImageList(1, aids);
			}
		}
		display('attachnotice_' + type);
	} else if(op == 2) {
		showDialog('<div id="unusedwin" class="c altw" style="overflow:auto;height:100px;">' + $('unusedlist_' + type).innerHTML + '</div>' +
/*vot*/			'<p class="o pns"><span class="z xg1"><label for="unusedwinchkall"><input id="unusedwinchkall" type="checkbox" onclick="attachoption(\'' + type + '\', 3)" checked="checked" />'+lng['select_all']+'</label></span>' +
/*vot*/			'<button onclick="attachoption(\'' + type + '\', 1);hideMenu(\'fwin_dialog\', \'dialog\')" class="pn pnc"><strong>'+lng['ok']+'</strong></button></p>', 'info', lng['unused']+' ' + (type == 'attach' ? lng['attachment'] : lng['image']));
	} else if(op == 3) {
		list = $('unusedwin').getElementsByTagName('INPUT');
		for(i = 0;i < list.length;i++) {
			if(list[i].name.match('unused')) {
				list[i].checked = $('unusedwinchkall').checked;
			}
		}
		return;
	}
	doane();
}

function insertAttachTag(aid) {
	var txt = '[attach]' + aid + '[/attach]';
	seditor_insertunit('fastpost', txt);
}
function insertAttachimgTag(aid) {
	var txt = '[attachimg]' + aid + '[/attachimg]';
	seditor_insertunit('fastpost', txt);
}
function insertText(str) {
	seditor_insertunit('fastpost', str);
}

function insertAllAttachTag() {
	var attachListObj = $('e_attachlist').getElementsByTagName("tbody");
	for(var i in attachListObj) {
		if(typeof attachListObj[i] == "object") {
			var attach = attachListObj[i];
			var ids = attach.id.split('_');
			if(ids[0] == 'attach') {
				if($('attachname'+ids[1]) && attach.style.display != 'none') {
					if(parseInt($('attachname'+ids[1]).getAttribute('isimage'))) {
						insertAttachimgTag(ids[1]);
					} else {
						insertAttachTag(ids[1]);
					}
					var txt = wysiwyg ? '\r\n<br/><br/>\r\n' : '\r\n\r\n';
					insertText(txt, strlen(txt), 0);
				}
			}
		}
	}
	doane();
}

function selectAllSaveImg(state) {
	var inputListObj = $('imgattachlist').getElementsByTagName("input");
	for(i in inputListObj) {
		if(typeof inputListObj[i] == "object" && inputListObj[i].id) {
			var inputObj = inputListObj[i];
			var ids = inputObj.id.split('_');
			if(ids[0] == 'albumaidchk' && $('image_td_' + ids[1]).className != 'imgdeleted' && inputObj.checked != state) {
				inputObj.click();
			}
		}
	}
}

function showExtra(id) {
	if ($(id+'_c').style.display == 'block') {
		$(id+'_b').className = 'pn z';
		$(id+'_c').style.display = 'none';
	} else {
		var extraButton = $('post_extra_tb').getElementsByTagName('label');
		var extraForm = $('post_extra_c').getElementsByTagName('div');

		for (i=0;i<extraButton.length;i++) {
			extraButton[i].className = '';
		}

		for (i=0;i<extraForm.length;i++) {
			if(hasClass(extraForm[i],'exfm')) {
				extraForm[i].style.display = 'none';
			}
		}

		for (i=0;i<extraForm.length;i++) {
			if(hasClass(extraForm[i],'exfm')) {
				extraForm[i].style.display = 'none';
			}
		}
		$(id+'_b').className = 'a';
		$(id+'_c').style.display = 'block';
	}
}

function extraCheck(op) {
	if(!op && $('extra_replycredit_chk')) {
		$('extra_replycredit_chk').className = $('replycredit_extcredits').value > 0 && $('replycredit_times').value > 0 ? 'a' : '';
	} else if(op == 1 && $('readperm')) {
		$('extra_readperm_chk').className = $('readperm').value !== '' ? 'a' : '';
	} else if(op == 2 && $('price')) {
		$('extra_price_chk').className = $('price').value > 0 ? 'a' : '';
	} else if(op == 3 && $('rushreply')) {
		$('extra_rushreplyset_chk').className = $('rushreply').checked ? 'a' : '';
	} else if(op == 4 && $('tags')) {
		$('extra_tag_chk').className = $('tags').value !== '' ? 'a' : '';
	} else if(op == 5 && $('cronpublish')) {
		$('extra_pubdate_chk').className = $('cronpublish').checked ? 'a' : '';
	}
}

function hidenFollowBtn(flag) {
	var fobj = $('adddynamicspan');
	if(fobj) {
		if(flag) {
			$('adddynamic').checked = !flag;
			fobj.style.display = 'none';
		} else {
			fobj.style.display = '';
		}
	}
}

function getreplycredit() {
	var replycredit_extcredits = $('replycredit_extcredits');
	var replycredit_times = $('replycredit_times');
	var credit_once = parseInt(replycredit_extcredits.value) > 0 ? parseInt(replycredit_extcredits.value) : 0;
	var times = parseInt(replycredit_times.value) > 0 ? parseInt(replycredit_times.value) : 0;
	if(parseInt(credit_once * times) - have_replycredit > 0) {
		var real_reply_credit = Math.ceil(parseInt(credit_once * times) - have_replycredit + ((parseInt(credit_once * times) - have_replycredit) * creditstax));
	} else {
		var real_reply_credit = Math.ceil(parseInt(credit_once * times) - have_replycredit);
	}

	var reply_credits_sum = Math.ceil(parseInt(credit_once * times));

	if(real_reply_credit > userextcredit) {
/*vot*/		$('replycredit').innerHTML = '<b class="xi1">'+lng['award_more_total']+' ('+real_reply_credit+')</b>';
	} else {
		if(have_replycredit > 0 && real_reply_credit < 0) {
/*vot*/			$('replycredit').innerHTML = "<font class='xi1'>"+lng['return']+" "+Math.abs(real_reply_credit)+"</font>";
		} else {
			$('replycredit').innerHTML = replycredit_result_lang + (real_reply_credit > 0 ? real_reply_credit : 0 );
		}
		$('replycredit_sum').innerHTML = reply_credits_sum > 0 ? reply_credits_sum : 0 ;
	}
}

function extraCheckall() {
	for(i = 0;i < 5;i++) {
		extraCheck(i);
	}
}

function deleteThread() {
/*vot*/	if(confirm(lng['delete_post_sure']) != 0){
		$('delete').value = '1';
		$('postform').submit();
	}
}

function hideAttachMenu(id) {
	if($(editorid + '_' + id + '_menu')) {
		$(editorid + '_' + id + '_menu').style.visibility = 'hidden';
	}
}