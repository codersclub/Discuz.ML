
var jQuery = window.jQuery.noConflict(true);
var dwidth = window.screen.width -20;
var dheight = data[data.indexOf('height')+1];
jQuery('#avatardesigner').width(dwidth-40);
jQuery('#avatardesigner').height(dheight-25);
jQuery('#widgetparent').width(dwidth-40);
jQuery('#widgetparent').height(dheight-25);
jQuery('#selector').width(150);
jQuery('#selector').height(150);
jQuery('#avatarfileselector').width(dwidth-40);
jQuery('#avatarfileselector').height(dheight-25);
jQuery('#avatarfile').width('100%');
jQuery('#avatarfile').height(dheight-25);

jQuery('#avatarcanvas').attr('width', (dwidth-40));
jQuery('#avatarcanvas').attr('height', dheight-25);
jQuery('#avatardisplaycanvas').attr('width', dwidth-40);
jQuery('#avatardisplaycanvas').attr('height', 400);

getID('avatarform').target ='uploadframe';
getID('avatarfile').onchange = uploadAvatarDone;
getID('avatarimage').onload = forceSelectorInsideAvatar;
getID('backfileselection').onclick = showAvatarFileSelector;
//getID('avconfirm').onclick = saveAvatar;

jQuery(document).ready(function () {

});

window.addEventListener('message', receiveMessage, false);

function receiveMessage(event) {
    var msgdata = event.data;
    if (typeof(msgdata) !== 'string') {
        return;
    }
    //rectAvatarDone(msgdata);
}

function uploadAvatarDone() {
    if (this.files && this.files[0]) {
        var fr = new FileReader();
        fr.onload = function(e) {
            jQuery('#avatarfileselector').hide();
            jQuery('#avatardisplayer').hide();
            jQuery('#avataradjuster').show();
			jQuery('#avataradjuster2').show();
            //getID('avatarimage').src = e.target.result;
			//console.log(dheight);

        };       
        fr.readAsDataURL(this.files[0]);
    }
}

function showAvatarFileSelector() {
    //getID('avatarimage').src = null;
    getID('avatarfile').value = null;
    clearAvatar();
    getID('avataradjuster').style.display = 'none'; 
	getID('avataradjuster2').style.display = 'none'; 
    getID('avatarfileselector').style.display = 'block';
}

function getAvatarDimension() {
    var factor = 50;
    var cw = jQuery('#widgetparent').width();
    var ch = jQuery('#widgetparent').height();
    var iw = jQuery('#avatarimage').width();
    var ih = jQuery('#avatarimage').height();
    var minw = 48;
    var minh = 48;
    var midw = Math.min(Math.max(iw, 48), cw);
    var midh = Math.min(Math.max(ih, 48), ch);
    var maxw = Math.max(Math.max(iw, 48), cw);
    var maxh = Math.max(Math.max(ih, 48), ch);
    var minr = Math.max(minw/iw, minh/ih);
    var midr = Math.max(midw/iw, midh/ih);
    var maxr = Math.max(maxw/iw, maxh/ih);
    if (factor<=50) {
        r = (minr * (50-factor) + midr * factor)/50;
    }
    else {
        r = (midr * (100-factor) + maxr * (factor-50))/50;
    }
    var aw = r*iw;
    var ah = r*ih;
    var al = (cw-aw)/2;
    var at = (ch-ah)/2;
    var sd = getSelectorDimention();
    if (aw>cw) al = (cw-aw)/(cw-sd.width)*sd.left;
    if (ah>ch) at = (ch-ah)/(ch-sd.height)*sd.top;
    return { left: Math.floor(al), top: Math.floor(at), width: Math.floor(aw), height: Math.floor(ah) };
}

function clearAvatar() {
    var canvas = getID('avatarcanvas');
    var cw = canvas.width;
    var ch = canvas.height;
    var ctx = canvas.getContext('2d');
    ctx.clearRect(0, 0, cw, ch);
}

function refreshAvatarCanvas(uiposition) { 
    var canvas = getID('avatarcanvas');
    var cw = canvas.width;
    var ch = canvas.height;
    var ctx = canvas.getContext('2d');
    ctx.clearRect(0, 0, cw, ch);
    var ad = getAvatarDimension();
    var iw = jQuery('#avatarimage').width();
    var ih = jQuery('#avatarimage').height();
    var img = getID('avatarimage');
    ctx.imageSmoothingQuality = 'high';
    ctx.drawImage(img, 0,0, iw, ih, ad.left, ad.top, ad.width, ad.height);
    var sd = getSelectorDimention();    
    if (uiposition) {
        sd.left = uiposition.left;
        sd.top = uiposition.top;
    }
    ctx.fillStyle="rgba(0,0,0,0.6)";
    ctx.fillRect(0, 0, cw, sd.top);
    ctx.fillRect(sd.left+sd.width, sd.top, cw-sd.left-sd.width, ch-sd.top);
    ctx.fillRect(0, sd.top+sd.height, sd.left+sd.width, ch-sd.top-sd.height);
    ctx.fillRect(0, sd.top, sd.left, sd.height);
}

function getSelectorDimention() {
    var sl = Math.ceil(jQuery('.photo-clip-layer').position().left);
    var st = Math.ceil(jQuery('.photo-clip-layer').position().top);
    var sw = jQuery('.photo-clip-layer').width();
    var sh = jQuery('.photo-clip-layer').height();
    return { left: sl, top: st, width: sw, height: sh };
}

function forceSelectorInsideAvatar() {
    var sd = getSelectorDimention();
    var ad = getAvatarDimension();
    if (sd.width>ad.width) jQuery('.photo-clip-layer').width(ad.width);
    if (sd.height>ad.height) jQuery('.photo-clip-layer').height(ad.height);
    sd = getSelectorDimention();
    //refreshAvatarCanvas();
}

function saveAvatar(src) {
	//jQuery('#avatarimage').attr('src', src);
    var img = getID('avatarimage');
	//console.log(img);
	//console.log(src);
    var canvas = document.createElement('canvas');
    canvas.width = 200;
    canvas.height = 200;
    var ctx = canvas.getContext("2d");
    ctx.fillStyle = 'white';
	ctx.fillRect(0, 0, 200, 200);
    //ctx.imageSmoothingQuality = 'high';
	//console.log(img);
    ctx.drawImage(img, 0, 0, 200, 200, 0, 0, 200, 200);
    var dataURL = canvas.toDataURL("image/jpeg", 1.0);
	//console.log(dataURL);
    jQuery('#avatar1').val(dataURL.substr(dataURL.indexOf(",") + 1));

    var tw = 120;
    var th = 120;
    var canvas = document.createElement('canvas');
    canvas.width = 120;
    canvas.height = 120;
    var ctx = canvas.getContext("2d");
    //ctx.fillStyle = 'white';
	ctx.fillRect(0, 0, 120, 120);
    //ctx.imageSmoothingQuality = 'high';
	//console.log(img);
    ctx.drawImage(img, 0, 0, 200, 200, 0, 0, 120, 120);
    var dataURL = canvas.toDataURL("image/jpeg", 1.0);
	//console.log(dataURL);
    jQuery('#avatar2').val(dataURL.substr(dataURL.indexOf(",") + 1));


    var tw = 48;
    var th = 48;
    var canvas = document.createElement('canvas');
    canvas.width = tw;
    canvas.height = th;
    var ctx = canvas.getContext("2d");
    ctx.fillStyle = 'white';
    ctx.fillRect(0, 0, 48, 48);
    ctx.imageSmoothingQuality = 'high';
	//console.log(img);
    ctx.drawImage(img, 0, 0, 200, 200, 0, 0, 48, 48);
    var dataURL = canvas.toDataURL("image/jpeg", 1.0);
	//console.log(dataURL);
    jQuery('#avatar3').val(dataURL.substr(dataURL.indexOf(",") + 1));

    var src = getID('avatarform').action;
    getID('avatarform').action = data[data.indexOf('stl_src')+1];
    getID('avatarform').target='rectframe';
	console.log('readysubmit');
	getID('avatarform').submit();
	refreshAvatarCanvasForDisplay();
	console.log('submited');
    jQuery('#avatardisplayer').show();
    jQuery('#avataradjuster').hide();
	jQuery('#avataradjuster2').hide();
}

function refreshAvatarCanvasForDisplay() {
	jQuery('#avatardesigner').height(420);
    var img = getID('avatarimage');
    var canvas = getID('avatardisplaycanvas');
    var ctx = canvas.getContext("2d");
    var ctl = 10;
    var ctt = 10;
    ctx.imageSmoothingQuality = 'high';
    ctx.drawImage(img, 0, 0, 200, 200, 5, ctt, 200, 200);
    ctl += 10 + 200;

    ctx.drawImage(img, 0, 0, 200, 200, 5, 220, 120, 120);
    ctl += 10 + 120;

    ctx.drawImage(img, 0, 0, 200, 200, 5, 350, 48, 48);

    ctx.fillStyle = "black";
    ctx.font = "bold 16px Arial";
    ctx.fillText('上传成功!', dwidth - 160,315);
    ctx.fillStyle = "grey";
    ctx.font = "bold 12px Arial";
    ctx.fillText('以上是您头像的三种尺寸', dwidth - 200, 340);
}

function rectAvatarDone(res) {
    if (!res) return;
    if (res == 'success') {
        jQuery('#avatardisplayer').show();
        //refreshAvatarCanvasForDisplay();
        jQuery('#avataradjuster').hide();
		jQuery('#avataradjuster2').hide();
        jQuery('#avatarfileselector').hide();
    } else if (res == 'failure') {
        alert('上传失败');
    }
}
var clipArea = new PhotoClip("#widgetparent", {
    size: [200, 200], // Array consisting of the width and height of the interception box. The default value is [260,260]
    outputSize: [200, 200], // Output an array consisting of the width and height of the image. The default value is [0,0], which means the original size of the output image
    outputType: "jpg", // Specify the type of output image, there are two types available: "jpg" and "png", the default is "jpg"
    file: "#avatarfile", // The selector or DOM object of the <input type="file"> control for uploading images
    //view: "#avatarimage", // The selector or DOM object of the container that displays the captured image
    ok: "#avconfirm", // Confirm the selector or DOM object of the screenshot button
	loadStart: function(file) {// Callback function to start loading. this points to the fileReader object, and the file object being loaded is passed in as a parameter
	},
	loadComplete: function() {// Callback function for loading completion. this points to the image object, and the image address is passed in as a parameter
	},
	loadError: function(msg) {// Callback function for loading failure. this points to the fileReader object, and the msg object of the error event is passed in as a parameter
	},
	done: function(dataURL) {
		imagesAjax(dataURL);
	},
	fail: function(msg) {
		//popup.open(msg, 'alert');
	},
    //clipFinish: function(dataURL) {}, // Callback function when cropping is completed. This points to the image object, and the cropped image data DataURL will be passed in as a parameter.
});

function imagesAjax(src) {
	//console.log(src);
	jQuery('#avatarimage').attr('src', src);
	setTimeout(function() {saveAvatar(src);}, 1000);
}

