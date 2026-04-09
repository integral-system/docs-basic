::my.include("../integral/common/includes/integral/doc-base.i", DV_DIR_EXE);
::my.include("../integral/common/includes/integral/doc-table.i", DV_DIR_EXE);
::my.include("../integral/common/includes/integral/doc-math.i", DV_DIR_EXE);

function CDTDocumentBasic::Formula_Pi(label)
{
	/* formula example from http://functions.wolfram.com/Constants/Pi/09/0014 */

	//local old_base_format = GetBaseFormat(1);

	local old_base_format = UpdateBaseFormat({Align = DE_ALIGN_CENTER}, -1 /* RETURN CLONED FORMAT BEFORE UPDATE */);

	local r = Run() + label + "\r" + Pi + Eq + LimitInf("n") + Sp + Frac(Sup(2, "n" + Sum + 1), Run() + 2 + Diff + Sub("b", 1)) + Mul + Brack(/* Run() WAS NEEDED BEFORE TO ENSURE FONT SIZE IS 100 + */ Frac(Sub("b", "n"), 2) + Mul + Sqrt(Run() + 2 + Sum + Sub("b", "n" + Diff + 1) + Mul + Sqrt(Run() + 2 + Sum + Sub("b", "n" + Diff + 2) + Mul + Sqrt(Run() + 2 + Sum + Ellipsis + Sum + Sub("b", 2) + Mul + Sqrt(Run() + 2 + Sum + "sin" + Brack(Frac(Run() + Pi + Mul + Sub("b", 1), 4))))))) + Sp + "/;" + Br() + Sub("b", "n") + Eq + 1 + And + Sub("b", "n" + Diff + 1) + Eq + -1 + And + "(" + Sub("b", "k") + Eq + 1 + And + 2 + LTEq + "k" + LTEq + "n" + Diff + 2 + And + "k" + Element + Integers + ")" + And + Sub("b", 1) + Element + Reals + And + -2 + LTEq + Sub("b", 1) + LTEq + 2;

	RestoreBaseFormat(old_base_format);

	//BaseFormat.clear();
	//UpdateBaseFormat(old_base_format);

	//UpdateBaseFormat({Align = DE_ALIGN_LEFT});

	return r;

	//return r * {Align = DE_ALIGN_CENTER};
}

function CDTDocumentBasic::Make(level, page_w, page_h)
{
	local label1 = "Formula " + (level + 1) + "-A: ";
	local label2 = "Formula " + (level + 1) + "-B: ";

	SetMathParams({Autoformat = 1, Placeholders = 0});
	UpdateBaseFormat({FontSize = 122});

	local t = Run()

	+ "Hello, here is my formula:"

	+ Gap()

	+ Formula_Pi(label1)

	+ Gap()

	+ "And here is my formula once again:"

	+ Gap()

	+ Formula_Pi(label2)

	+ Gap()

	+ "Mathematical notation includes " + {Text = "letters from various alphabets", Bold = 1} + ", as well as " + {Text = "special mathematical and scientific symbols", Underline = 1} + ". Letters in various fonts often have specific, fixed meanings in particular areas of mathematics. In mathematics, a formula is an entity constructed using the symbols and formation rules of a given logical language. A mathematical formula such as " + Root(3, "x + y") + " contains two variables, x and y. Other formulas may be created to solve a particular problem: for example, using the equation of a sine curve to model the movement of the tides in a bay: sin" + Brack(Frac("a - b", "x + y")) + ". In all cases, however, formulas form the basis for calculations. Expressions are distinct from formulas in that they cannot contain an equals sign. When comparing formulas to grammatical sentences, expressions are more like phrases."

	+ Gap()

	+ "In a general context, mathematical formulas are applied to provide a mathematical solution for real world problems. Some formulas may be rather complex to typeset, for example:"

	+ Gap()

	+ Frac(Root(3, "u + v"), Run() + Pi + Sum + Integral("cos(x) dx", "a", "b") + Diff + Root(4, Frac("a - b", "x + y")), {NewlineFlag = 0, RunFormat = {Align = DE_ALIGN_CENTER}})

	+ Gap()

	+ "The vast majority of computations with measurements are done in computer programs with no facility for retaining a symbolic computation of the units. Only the numerical quantity is used in the computation. This requires that the universal formula be converted to a formula that is intended to be used only with prescribed units, meaning the numerical quantity is implicitly assumed to be multiplying a particular unit. The requirements about the prescribed units must be given to users of the input and the output of the formula.";

	//t * {Align = DE_ALIGN_CENTER};
	//t * {SkewHor = 12};
	//t * {FontHeight = 200};
	//t * {FontSize = 70};

	/* text flow on three pages */

	TextFlow(0, 3, 1, 0, 100, 100, page_w - 200, page_h - 200, t);
}


local format = ::my.app.GetQueryVar("format", DX_FORMAT_PDF_NORMAL).tointeger();
local level = ::my.app.GetQueryVar("level", 25).tointeger();
local page = ::my.app.GetQueryVar("page", 0).tointeger();
local zoom = 0.06 + level * 0.02;
local page_w = 5200, page_h = 3000;

local doc = CDTDocumentBasic("fontmaps/stix-1.inf");
doc.Make(level, page_w, page_h);
doc.Cleanup();

::my.app.ReZoom(zoom);
::my.app.Export(format, page_w * zoom, page_h * zoom, 2, page);
