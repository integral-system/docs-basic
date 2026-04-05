::my.include("../../common/includes/integral/doc-base.i");

function CDTDocumentBasic::Make()
{
	/* lambda shortcuts */

	local o = @(label = "") CDTObj(this, label); /* to make object */
	local s = @(id, str) CDTPropStr(id, str); /* to add property - string */
	local i = @(id, num) CDTPropInt(id, num); /* to add property - integer */
	local l = @(id, obj) CDTLink(id, obj); /* to add link */

	/* objects and their properties */

	local o00 = o("Text Color") + s(pdRGBT, "50641400");
	local o01 = o("Typography") + s(pdFontUniqueID, "F0011_STIX1__NS0") + i(pdFontDw, 70) + i(pdFontDh, 100) + l(pdBodyPtr, o00);
	local arr =
	[
		o() + s(pdTextString_08, "I") + l(pdTypographyPtr, o01),
		o() + s(pdTextString_08, "IN") + l(pdTypographyPtr, o01),
		o() + s(pdTextString_08, "INT") + l(pdTypographyPtr, o01),
		o() + s(pdTextString_08, "INTE") + l(pdTypographyPtr, o01),
		o() + s(pdTextString_08, "INTEG") + l(pdTypographyPtr, o01),
		o() + s(pdTextString_08, "INTEGR") + l(pdTypographyPtr, o01),
		o() + s(pdTextString_08, "INTEGRA") + l(pdTypographyPtr, o01),
		o() + s(pdTextString_08, "INTEGRAL") + l(pdTypographyPtr, o01)
	];

	/* image placement */

	local n = arr.len();
	for (local i = 0; i < n; i++) arr[i].Pin(i, 25, 95, pdDrawTextLine);
	return n;
}


local format = ::my.app.GetQueryVar("format", DX_FORMAT_GIF).tointeger();
local zoom = ::my.app.GetQueryVar("zoom", 1.0).tofloat();
local delay = ::my.app.GetQueryVar("delay", 50).tointeger();
local loops = ::my.app.GetQueryVar("loops", 0).tointeger();

local doc = CDTDocumentBasic();
local n = doc.Make();
doc.Cleanup();

::my.app.ReZoom(zoom);
::my.app.Export(format, 400 * zoom, 120 * zoom, n - 1, 0, DX_TRANSP_ALPHA, 0, delay, loops);
