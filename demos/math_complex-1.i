::my.include("../integral/common/includes/integral/doc-base.i", DV_DIR_EXE);
::my.include("../integral/common/includes/integral/doc-list.i", DV_DIR_EXE);
::my.include("../integral/common/includes/integral/doc-table.i", DV_DIR_EXE);
::my.include("../integral/common/includes/integral/doc-math.i", DV_DIR_EXE);

function CDTDocumentBasic::Make(level, page_w, page_h)
{
	SetMathParams({Autoformat = 1, Placeholders = 0});
	UpdateBaseFormat({FontSize = 200, Align = DE_ALIGN_LEFT, TabstopPositions = "9600, 9800", TabstopFlags = "2, 0"});

	/* formula example https://tex.stackexchange.com/questions/120271/alternatives-to-latex#120279 */
	/* https://i.stack.imgur.com/vsn9C.png */

	/* formatted symbols */

	local s = {Text = "s", Italic = 1};
	local f = {Text = "ƒ", Italic = 1};
	local c = {Text = "c", Bold = 1};
	local delta = {Text = "δ", Bold = 1, Italic = 1};

	/* a shortcut */

	local pd = PartialDifferentialItalic;

	/* lambda expressions */

	local a = @() Arg("a") + Brack(Run(c) + "(" + Arg("t," + ThinSp + "s") + ")");
	local g = @() SupSub("G", 0, "n");
	local k = @() Frac(4, Sub("K", "d") + ThinSp + Sup(Pi, 2) + Sup("M", 3));
	local f_c_delta = @() Brack(Run(f) + c + Diff + delta);
	local tr = @(arg = null) Run("tr") + Brack(Run(c) + (arg == null ? "" : Run("(") + Arg(arg) + ")"));

	/* content */

	local math = Run()

	+ Tab + Sub(c, 0) + Brack("s") + Eq + Tab + delta + ","

	+ Gap()
	+ Tab + Above(Run(c) + Brack("s"), Nabla) + Eq + Tab + Frac(pd, pd + "s") + ThinSp + Brack(Sub("α", "d") + Frac(Run(pd) + ThinSp + f + c, pd + "s")) + Sum + Sub("α", "R") + ThinSp + Frac(c, tr()) + Mul + Frac(Sup(pd, 2) + ThinSp + f + tr(), Run(pd) + Sup("s", 2)) + Sum + Frac(Sub("α", "R"), 2) + Mul + Frac(Run(pd) + ThinSp + f + tr(), pd + "s") + Mul + Frac(pd, pd + "s") + ThinSp + Brack(Frac(c, tr())) + Diff + Brack(Frac(1, Sub("τ", Run("CR"))) + Sum + Sub(f, Run("CCR"))) + Mul + Frac(3, tr()) + Mul + f_c_delta() + ","

	+ Gap()
	+ Tab + EvalBarB(Run(c) + Brack("s"), "s" + Eq + PlusMinus + 1, {SymMask = 1}) + Eq + Tab + delta + ","

	+ Gap()
	+ Tab + {Text = "σ", Bold = 1} + Eq + Tab + Frac(g(), 2) + Mul + Integral(f_c_delta() + ThinSp + "d" + s, Minus + 1, Plus + 1) + ",";

	UpdateBaseFormat({FontSize = 200, Align = DE_ALIGN_LEFT, TabstopPositions = "4000", TabstopFlags = "0"});

	math + Gap()
	+ "avec" + Tab + f + Arg("(s)") + DeltaEq + Frac("b" + Diff + 3, Arg("b") + Diff + tr("s")) + ThinSp + ";"

	+ Gap()
	+ Tab + Sub("α", "R") + Brack("s") + DeltaEq + Frac(4, Sub("K", "R") + ThinSp + Sup(Pi, 2) + Sup("M", 2)) + ThinSp + ";"

	+ Gap()
	+ Tab + Sub("α", "d") + Brack("s") + DeltaEq

	+ Matrix([k() + Mul + Frac(SupSub("K", 2, f) + ThinSp + Sub("M", "e"), Arg("M") + ThinSp + Sup("(1" + Diff + "s)", 2)), Run("si ") + Abs("1" + Diff + "s") + LT + Sub("K", f) + Mul + Sqrt(Frac(Sub("M", "e"), "M")) + ","], [k(), Run("sinon,")], {StyleID = 3, SymMask = 1}) + ThinSp + ";"

	+ Gap()
	+ Tab + Sub(f, Run("CCR")) + DeltaEq + MinusSp + Frac(Integral(EvalBarB(Frac("D", "Dt") + ThinSp + a(), Run("stretch"), {SymMask = 1}) + ThinSp + "d" + s, Minus + 1, Plus + 1) , Integral(a() + ThinSp + "d" + s, Minus + 1, Plus + 1)) + ThinSp + ";"

	+ Gap()
	+ Tab + a() + DeltaEq + g() + ThinSp + Brack(Run(MinusSp) + "(b" + Diff + "3) log" + ThinSp + Brack(Run(1) + Diff + Frac(tr(), "b")) + Diff + "log" + Brack(Run("det") + Brack(c))) + ThinSp + ".";

	/* text area */

	TextArea(0, 100, 100, page_w - 200, page_h - 200, math);
}


local format = ::my.app.GetQueryVar("format", DX_FORMAT_SVG).tointeger();
local level = ::my.app.GetQueryVar("level", 5).tointeger();
local zoom = 0.06 + level * 0.02;
local page_w = 8200, page_h = 7200;

local doc = CDTDocumentBasic("fontmaps/stix-1.inf");
doc.Make(level, page_w, page_h);
doc.Cleanup();

::my.app.ReZoom(zoom);
::my.app.Export(format, page_w * zoom, page_h * zoom);
