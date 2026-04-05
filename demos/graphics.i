::my.include("../../common/includes/integral/doc-base.i");

function CDTDocumentBasic::Make()
{
	/* lambda shortcuts */

	local o = @(label = "") CDTObj(this, label); /* to make object */
	local s = @(id, str) CDTPropStr(id, str); /* to add property - string */
	local i = @(id, num) CDTPropInt(id, num); /* to add property - integer */
	local l = @(id, obj) CDTLink(id, obj); /* to add link */

	/* objects and their properties */

	local o00 = o("Ellipse Outline Color") + s(pdRGBT, "50641400");
	local o01 = o("Ellipse Body Color") + s(pdRGBT, "FFFF0000");
	local o02 = o("Ellipse Shadow Color") + s(pdRGBT, "80808078");
	local o03 = o("Ellipse Outline") + l(pdStylePtr, o00) + i(pdLineThickness, 340);
	local o04 = o("Ellipse Shadow") + l(pdStylePtr, o02) + i(pdShadowDx, 5) + i(pdShadowDy, 5);
	local o05 = o("Ellipse") + i(pdDw, 480) + i(pdDh, 480) + l(pdBodyPtr, o01) + l(pdOutlinePtr, o03) + l(pdShadowPtr, o04);
	local o06 = o("Ellipse Outline Color") + s(pdRGBT, "50641400");
	local o07 = o("Ellipse Body Color") + s(pdRGBT, "FFFFFF00");
	local o08 = o("Ellipse Outline") + i(pdLineThickness, 340) + l(pdStylePtr, o06);
	local o09 = o("Ellipse") + l(pdOutlinePtr, o08) + l(pdBodyPtr, o07) + i(pdDw, 140) + i(pdDh, 140);
	local o10 = o("Arc Color") + s(pdRGBT, "50641400");
	local o11 = o("Arc Line Width") + l(pdStylePtr, o10) + i(pdLineThickness, 1700);
	local o12 = o("Arc") + l(pdLinePtr, o11) + i(pdAngleTheta, 120) + i(pdAngleAlpha, 30) + i(pdRadiusHor, 160) + i(pdRadiusVer, 160);
	local o13 = o("Ellipse Outline Color") + s(pdRGBT, "50641400");
	local o14 = o("Ellipse Body Color") + s(pdRGBT, "FFC01400");
	local o15 = o("Ellipse Outline") + i(pdLineThickness, 240) + l(pdStylePtr, o13);
	local o16 = o("Ellipse") + l(pdOutlinePtr, o15) + l(pdBodyPtr, o14) + i(pdDh, 130) + i(pdDw, 160);
	local o17 = o("Ellipse Body Color") + s(pdRGBT, "50641400");
	local o18 = o("Ellipse") + l(pdBodyPtr, o17) + i(pdDw, 70) + i(pdDh, 70);
	local o19 = o("TextLine Typography") + s(pdFontUniqueID, "F0011_STIX1__NS0") + i(pdFontDw, 70) + i(pdFontDh, 100) + l(pdBodyPtr, o17);
	local o20 = o("TextLine") + s(pdTextString_08, "INTEGRAL") + l(pdTypographyPtr, o19);

	/* image placement */

	o05.Pin(0, 100, 170, pdDrawEllipse);
	o09.Pin(0, 180, 250, pdDrawEllipse);
	o12.Pin(0, 340, 410, pdDrawArc);
	o18.Pin(0, 205, 260, pdDrawEllipse);
	o09.Pin(0, 360, 250, pdDrawEllipse);
	o18.Pin(0, 385, 260, pdDrawEllipse);
	o16.Pin(0, 260, 340, pdDrawEllipse);
	o20.Pin(0, 170, 120, pdDrawTextLine);
}


local format = ::my.app.GetQueryVar("format", DX_FORMAT_PNG).tointeger();
local zoom = ::my.app.GetQueryVar("zoom", 1.2).tofloat();
local page = ::my.app.GetQueryVar("page", 0).tointeger();

local doc = CDTDocumentBasic();
doc.Make();
doc.Cleanup();

::my.app.ReZoom(zoom);
::my.app.Export(format, 680 * zoom, 700 * zoom, 0, page, DX_TRANSP_ALPHA);
