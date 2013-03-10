<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_exif.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array(

	'unknown' => '未知',
	'resolutionunit' => array('', '', '英吋', '厘米'),
	'exposureprogram' => array('未定義', '手動', '標準程序', '光圈先決', '快門先決', '景深先決', '運動模式', '肖像模式', '風景模式'),
	'meteringmode' => array(
		'0'		=>	'未知',
		'1'		=>	'平均',
		'2'		=>	'中央重點平均測光',
		'3'		=>	'點測',
		'4'		=>	'分區',
		'5'		=>	'評估',
		'6'		=>	'局部',
		'255'	=>	'其他'
		),
	'lightsource' => array(
		'0'		=>	'未知',
		'1'		=>	'日光',
		'2'		=>	'熒光燈',
		'3'		=>	'鎢絲燈',
		'10'	=>	'閃光燈',
		'17'	=>	'標準燈光A',
		'18'	=>	'標準燈光B',
		'19'	=>	'標準燈光C',
		'20'	=>	'D55',
		'21'	=>	'D65',
		'22'	=>	'D75',
		'255'	=>	'其他'
		),
	'img_info' => array ('文件信息' => '沒有圖片EXIF信息'),

	'FileName' => '文件名',
	'FileType' => '文件類型',
	'MimeType' => '文件格式',
	'FileSize' => '文件大小',
	'FileDateTime' => '時間戳',
	'ImageDescription' => '圖片說明',
	'auto'     => '自動',
	'Make'     => '製造商',
	'Model'    => '型號',
	'Orientation' => '方向',
	'XResolution' => '水平分辨率',
	'YResolution' => '垂直分辨率',
	'Software'    => '創建軟件',
	'DateTime'    => '修改時間',
	'Artist'      => '作者',
	'YCbCrPositioning' => 'YCbCr位置控制',
	'Copyright'   => '版權',
	'Photographer'=> '攝影版權',
	'Editor'      => '編輯版權',
	'ExifVersion' => 'Exif版本',
	'FlashPixVersion' => 'FlashPix版本',
	'DateTimeOriginal' => '拍攝時間',
	'DateTimeDigitized'=> '數字化時間',
	'Height'  => '拍攝分辨率高',
	'Width'   => '拍攝分辨率寬',
	'ApertureValue' => '光圈',
	'ShutterSpeedValue' => '快門速度',
	'ApertureFNumber'   => '快門光圈',
	'MaxApertureValue'  => '最大光圈值',
	'ExposureTime'      => '曝光時間',
	'FNumber'           => 'F-Number',
	'MeteringMode'      => '測光模式',
	'LightSource'       => '光源',
	'Flash'             => '閃光燈',
	'ExposureMode'		=> '曝光模式',
	'manual'            => '手動',
	'WhiteBalance'      => '白平衡',
	'ExposureProgram'   => '曝光程序',
	'ExposureBiasValue' => '曝光補償',
	'ISOSpeedRatings'   => 'ISO感光度',
	'ComponentsConfiguration' => '份量配置',
	'CompressedBitsPerPixel'  => '圖像壓縮率',
	'FocusDistance'     => '對焦距離',
	'FocalLength'       => '焦距',
	'FocalLengthIn35mmFilm' => '等價35mm焦距',
	'UserCommentEncoding' => '用戶註釋編碼',
	'UserComment'		=> '用戶註釋',
	'ColorSpace'		=> '色彩空間',
	'ExifImageLength'   => 'Exif圖像寬度',
	'ExifImageWidth'    => 'Exif圖像高度',
	'FileSource'        => '文件來源',
	'SceneType'			=> '場景類型',
	'ThumbFileType'     => '縮略圖文件格式',
	'ThumbMimeType'     => '縮略圖Mime格式'
);

?>