::my.include("../../common/includes/integral/doc-base.i");
::my.include("../../common/includes/integral/doc-table.i");
::my.include("../../common/includes/integral/doc-math.i");

function CDTDocumentBasic::Make(level, page_w, page_h)
{
	SetMathParams({Autoformat = 1, Placeholders = 0});
	UpdateBaseFormat({FontSize = 120, Align = DE_ALIGN_CENTER}); // Set font size to 120 mm and center

	local label = "Formula " + (level + 1) + ": ";

	/* formula example from http://functions.wolfram.com/Constants/Pi/09/0014 */
	local formula = Run() + Pi + Eq + LimitInf("n") + Sp + Frac(Sup(2, "n" + Sum + 1), Run() + 2 + Diff + Sub("b", 1)) + Mul + Brack(Frac(Sub("b", "n"), 2) + Mul + Sqrt(Run() + 2 + Sum + Sub("b", "n" + Diff + 1) + Mul + Sqrt(Run() + 2 + Sum + Sub("b", "n" + Diff + 2) + Mul + Sqrt(Run() + 2 + Sum + Ellipsis + Sum + Sub("b", 2) + Mul + Sqrt(Run() + 2 + Sum + "sin" + Brack(Frac(Run() + Pi + Mul + Sub("b", 1), 4))))))) + Sp + "/;\r" + label + Sub("b", "n") + Eq + 1 + And + Sub("b", "n" + Diff + 1) + Eq + -1 + And + "(" + Sub("b", "k") + Eq + 1 + And + 2 + LTEq + "k" + LTEq + "n" + Diff + 2 + And + "k" + Element + Integers + ")" + And + Sub("b", 1) + Element + Reals + And + -2 + LTEq + Sub("b", 1) + LTEq + 2;

	TextArea(0, 100, 100, page_w - 200, page_h - 200, formula);
}


local format = ::my.app.GetQueryVar("format", DX_FORMAT_SVG).tointeger();
local level = ::my.app.GetQueryVar("level", 5).tointeger();
local zoom = 0.06 + level * 0.02;
local page_w = 5200, page_h = 1000;

local doc = CDTDocumentBasic("../../common/fontmaps/stix-1.inf");
doc.Make(level, page_w, page_h);
doc.Cleanup();

::my.app.ReZoom(zoom);
::my.app.Export(format, page_w * zoom, page_h * zoom);
