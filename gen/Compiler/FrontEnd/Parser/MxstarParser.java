// Generated from /Users/resolution/Documents/GitHub/Compiler/src/Compiler/FrontEnd/Parser/Mxstar.g4 by ANTLR 4.7
package Compiler.FrontEnd.Parser;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxstarParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.7", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, T__35=36, T__36=37, T__37=38, 
		T__38=39, T__39=40, T__40=41, T__41=42, T__42=43, T__43=44, T__44=45, 
		T__45=46, T__46=47, T__47=48, T__48=49, T__49=50, T__50=51, IDENTIFIER=52, 
		INTEGER=53, STRING=54, LINECOMMENT=55, BLOCKCOMMENT=56, WHITESPACE=57;
	public static final int
		RULE_program = 0, RULE_variableDeclarationStatement = 1, RULE_functionDeclaration = 2, 
		RULE_classDeclaration = 3, RULE_statement = 4, RULE_blockStatement = 5, 
		RULE_expressionStatement = 6, RULE_ifStatement = 7, RULE_whileStatement = 8, 
		RULE_forStatement = 9, RULE_continueStatement = 10, RULE_breakStatement = 11, 
		RULE_returnStatement = 12, RULE_constant = 13, RULE_type = 14, RULE_voidType = 15, 
		RULE_expression = 16;
	public static final String[] ruleNames = {
		"program", "variableDeclarationStatement", "functionDeclaration", "classDeclaration", 
		"statement", "blockStatement", "expressionStatement", "ifStatement", "whileStatement", 
		"forStatement", "continueStatement", "breakStatement", "returnStatement", 
		"constant", "type", "voidType", "expression"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'='", "';'", "'('", "','", "')'", "'()'", "'class'", "'{'", "'}'", 
		"'if'", "'else'", "'while'", "'for'", "'continue'", "'break'", "'return'", 
		"'true'", "'false'", "'null'", "'int'", "'bool'", "'string'", "'[]'", 
		"'void'", "'this'", "'++'", "'--'", "'['", "']'", "'.'", "'+'", "'-'", 
		"'!'", "'~'", "'new'", "'*'", "'/'", "'%'", "'<<'", "'>>'", "'<'", "'>'", 
		"'<='", "'>='", "'=='", "'!='", "'&'", "'^'", "'|'", "'&&'", "'||'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, "IDENTIFIER", "INTEGER", "STRING", "LINECOMMENT", 
		"BLOCKCOMMENT", "WHITESPACE"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Mxstar.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public MxstarParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class ProgramContext extends ParserRuleContext {
		public List<VariableDeclarationStatementContext> variableDeclarationStatement() {
			return getRuleContexts(VariableDeclarationStatementContext.class);
		}
		public VariableDeclarationStatementContext variableDeclarationStatement(int i) {
			return getRuleContext(VariableDeclarationStatementContext.class,i);
		}
		public List<FunctionDeclarationContext> functionDeclaration() {
			return getRuleContexts(FunctionDeclarationContext.class);
		}
		public FunctionDeclarationContext functionDeclaration(int i) {
			return getRuleContext(FunctionDeclarationContext.class,i);
		}
		public List<ClassDeclarationContext> classDeclaration() {
			return getRuleContexts(ClassDeclarationContext.class);
		}
		public ClassDeclarationContext classDeclaration(int i) {
			return getRuleContext(ClassDeclarationContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitProgram(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(37); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				setState(37);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
				case 1:
					{
					setState(34);
					variableDeclarationStatement();
					}
					break;
				case 2:
					{
					setState(35);
					functionDeclaration();
					}
					break;
				case 3:
					{
					setState(36);
					classDeclaration();
					}
					break;
				}
				}
				setState(39); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__6) | (1L << T__19) | (1L << T__20) | (1L << T__21) | (1L << T__23) | (1L << IDENTIFIER))) != 0) );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VariableDeclarationStatementContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode IDENTIFIER() { return getToken(MxstarParser.IDENTIFIER, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public VariableDeclarationStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variableDeclarationStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterVariableDeclarationStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitVariableDeclarationStatement(this);
		}
	}

	public final VariableDeclarationStatementContext variableDeclarationStatement() throws RecognitionException {
		VariableDeclarationStatementContext _localctx = new VariableDeclarationStatementContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_variableDeclarationStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(41);
			type(0);
			setState(42);
			match(IDENTIFIER);
			setState(45);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__0) {
				{
				setState(43);
				match(T__0);
				setState(44);
				expression(0);
				}
			}

			setState(47);
			match(T__1);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionDeclarationContext extends ParserRuleContext {
		public BlockStatementContext blockStatement() {
			return getRuleContext(BlockStatementContext.class,0);
		}
		public List<TypeContext> type() {
			return getRuleContexts(TypeContext.class);
		}
		public TypeContext type(int i) {
			return getRuleContext(TypeContext.class,i);
		}
		public VoidTypeContext voidType() {
			return getRuleContext(VoidTypeContext.class,0);
		}
		public List<TerminalNode> IDENTIFIER() { return getTokens(MxstarParser.IDENTIFIER); }
		public TerminalNode IDENTIFIER(int i) {
			return getToken(MxstarParser.IDENTIFIER, i);
		}
		public FunctionDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionDeclaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterFunctionDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitFunctionDeclaration(this);
		}
	}

	public final FunctionDeclarationContext functionDeclaration() throws RecognitionException {
		FunctionDeclarationContext _localctx = new FunctionDeclarationContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_functionDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(51);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__19:
			case T__20:
			case T__21:
			case IDENTIFIER:
				{
				setState(49);
				type(0);
				}
				break;
			case T__23:
				{
				setState(50);
				voidType();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(54);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==IDENTIFIER) {
				{
				setState(53);
				match(IDENTIFIER);
				}
			}

			setState(71);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__2:
				{
				setState(56);
				match(T__2);
				{
				setState(57);
				type(0);
				setState(58);
				match(IDENTIFIER);
				setState(65);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__19) | (1L << T__20) | (1L << T__21) | (1L << IDENTIFIER))) != 0)) {
					{
					{
					setState(59);
					type(0);
					setState(60);
					match(T__3);
					setState(61);
					match(IDENTIFIER);
					}
					}
					setState(67);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
				setState(68);
				match(T__4);
				}
				break;
			case T__5:
				{
				setState(70);
				match(T__5);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(73);
			blockStatement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClassDeclarationContext extends ParserRuleContext {
		public TerminalNode IDENTIFIER() { return getToken(MxstarParser.IDENTIFIER, 0); }
		public List<VariableDeclarationStatementContext> variableDeclarationStatement() {
			return getRuleContexts(VariableDeclarationStatementContext.class);
		}
		public VariableDeclarationStatementContext variableDeclarationStatement(int i) {
			return getRuleContext(VariableDeclarationStatementContext.class,i);
		}
		public List<FunctionDeclarationContext> functionDeclaration() {
			return getRuleContexts(FunctionDeclarationContext.class);
		}
		public FunctionDeclarationContext functionDeclaration(int i) {
			return getRuleContext(FunctionDeclarationContext.class,i);
		}
		public ClassDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classDeclaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterClassDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitClassDeclaration(this);
		}
	}

	public final ClassDeclarationContext classDeclaration() throws RecognitionException {
		ClassDeclarationContext _localctx = new ClassDeclarationContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_classDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(75);
			match(T__6);
			setState(76);
			match(IDENTIFIER);
			setState(77);
			match(T__7);
			setState(82);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__19) | (1L << T__20) | (1L << T__21) | (1L << T__23) | (1L << IDENTIFIER))) != 0)) {
				{
				setState(80);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,7,_ctx) ) {
				case 1:
					{
					setState(78);
					variableDeclarationStatement();
					}
					break;
				case 2:
					{
					setState(79);
					functionDeclaration();
					}
					break;
				}
				}
				setState(84);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(85);
			match(T__8);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementContext extends ParserRuleContext {
		public BlockStatementContext blockStatement() {
			return getRuleContext(BlockStatementContext.class,0);
		}
		public ExpressionStatementContext expressionStatement() {
			return getRuleContext(ExpressionStatementContext.class,0);
		}
		public IfStatementContext ifStatement() {
			return getRuleContext(IfStatementContext.class,0);
		}
		public ForStatementContext forStatement() {
			return getRuleContext(ForStatementContext.class,0);
		}
		public WhileStatementContext whileStatement() {
			return getRuleContext(WhileStatementContext.class,0);
		}
		public ContinueStatementContext continueStatement() {
			return getRuleContext(ContinueStatementContext.class,0);
		}
		public BreakStatementContext breakStatement() {
			return getRuleContext(BreakStatementContext.class,0);
		}
		public ReturnStatementContext returnStatement() {
			return getRuleContext(ReturnStatementContext.class,0);
		}
		public VariableDeclarationStatementContext variableDeclarationStatement() {
			return getRuleContext(VariableDeclarationStatementContext.class,0);
		}
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitStatement(this);
		}
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_statement);
		try {
			setState(96);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,9,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(87);
				blockStatement();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(88);
				expressionStatement();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(89);
				ifStatement();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(90);
				forStatement();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(91);
				whileStatement();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(92);
				continueStatement();
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(93);
				breakStatement();
				}
				break;
			case 8:
				enterOuterAlt(_localctx, 8);
				{
				setState(94);
				returnStatement();
				}
				break;
			case 9:
				enterOuterAlt(_localctx, 9);
				{
				setState(95);
				variableDeclarationStatement();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BlockStatementContext extends ParserRuleContext {
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public BlockStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_blockStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBlockStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBlockStatement(this);
		}
	}

	public final BlockStatementContext blockStatement() throws RecognitionException {
		BlockStatementContext _localctx = new BlockStatementContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_blockStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(98);
			match(T__7);
			setState(102);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__1) | (1L << T__2) | (1L << T__7) | (1L << T__9) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << T__21) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << T__33) | (1L << T__34) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
				{
				{
				setState(99);
				statement();
				}
				}
				setState(104);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(105);
			match(T__8);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionStatementContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExpressionStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expressionStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterExpressionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitExpressionStatement(this);
		}
	}

	public final ExpressionStatementContext expressionStatement() throws RecognitionException {
		ExpressionStatementContext _localctx = new ExpressionStatementContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_expressionStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(108);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << T__33) | (1L << T__34) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
				{
				setState(107);
				expression(0);
				}
			}

			setState(110);
			match(T__1);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IfStatementContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public IfStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ifStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterIfStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitIfStatement(this);
		}
	}

	public final IfStatementContext ifStatement() throws RecognitionException {
		IfStatementContext _localctx = new IfStatementContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_ifStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(112);
			match(T__9);
			setState(113);
			match(T__2);
			setState(114);
			expression(0);
			setState(115);
			match(T__4);
			setState(116);
			statement();
			setState(119);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,12,_ctx) ) {
			case 1:
				{
				setState(117);
				match(T__10);
				setState(118);
				statement();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class WhileStatementContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public WhileStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_whileStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterWhileStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitWhileStatement(this);
		}
	}

	public final WhileStatementContext whileStatement() throws RecognitionException {
		WhileStatementContext _localctx = new WhileStatementContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_whileStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(121);
			match(T__11);
			setState(122);
			match(T__2);
			setState(123);
			expression(0);
			setState(124);
			match(T__4);
			setState(125);
			statement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ForStatementContext extends ParserRuleContext {
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ForStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterForStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitForStatement(this);
		}
	}

	public final ForStatementContext forStatement() throws RecognitionException {
		ForStatementContext _localctx = new ForStatementContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_forStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(127);
			match(T__12);
			setState(128);
			match(T__2);
			setState(130);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << T__33) | (1L << T__34) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
				{
				setState(129);
				expression(0);
				}
			}

			setState(132);
			match(T__1);
			setState(134);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << T__33) | (1L << T__34) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
				{
				setState(133);
				expression(0);
				}
			}

			setState(136);
			match(T__1);
			setState(138);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << T__33) | (1L << T__34) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
				{
				setState(137);
				expression(0);
				}
			}

			setState(140);
			match(T__4);
			setState(141);
			statement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ContinueStatementContext extends ParserRuleContext {
		public ContinueStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_continueStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterContinueStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitContinueStatement(this);
		}
	}

	public final ContinueStatementContext continueStatement() throws RecognitionException {
		ContinueStatementContext _localctx = new ContinueStatementContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_continueStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(143);
			match(T__13);
			setState(144);
			match(T__1);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BreakStatementContext extends ParserRuleContext {
		public BreakStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_breakStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBreakStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBreakStatement(this);
		}
	}

	public final BreakStatementContext breakStatement() throws RecognitionException {
		BreakStatementContext _localctx = new BreakStatementContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_breakStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(146);
			match(T__14);
			setState(147);
			match(T__1);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ReturnStatementContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ReturnStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_returnStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterReturnStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitReturnStatement(this);
		}
	}

	public final ReturnStatementContext returnStatement() throws RecognitionException {
		ReturnStatementContext _localctx = new ReturnStatementContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_returnStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(149);
			match(T__15);
			setState(151);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << T__33) | (1L << T__34) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
				{
				setState(150);
				expression(0);
				}
			}

			setState(153);
			match(T__1);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConstantContext extends ParserRuleContext {
		public ConstantContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constant; }
	 
		public ConstantContext() { }
		public void copyFrom(ConstantContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class IntConstantContext extends ConstantContext {
		public TerminalNode INTEGER() { return getToken(MxstarParser.INTEGER, 0); }
		public IntConstantContext(ConstantContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterIntConstant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitIntConstant(this);
		}
	}
	public static class StringConstantContext extends ConstantContext {
		public TerminalNode STRING() { return getToken(MxstarParser.STRING, 0); }
		public StringConstantContext(ConstantContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterStringConstant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitStringConstant(this);
		}
	}
	public static class NullConstantContext extends ConstantContext {
		public NullConstantContext(ConstantContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterNullConstant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitNullConstant(this);
		}
	}
	public static class BoolConstantContext extends ConstantContext {
		public BoolConstantContext(ConstantContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBoolConstant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBoolConstant(this);
		}
	}

	public final ConstantContext constant() throws RecognitionException {
		ConstantContext _localctx = new ConstantContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_constant);
		int _la;
		try {
			setState(159);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__16:
			case T__17:
				_localctx = new BoolConstantContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(155);
				_la = _input.LA(1);
				if ( !(_la==T__16 || _la==T__17) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				}
				break;
			case INTEGER:
				_localctx = new IntConstantContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(156);
				match(INTEGER);
				}
				break;
			case STRING:
				_localctx = new StringConstantContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(157);
				match(STRING);
				}
				break;
			case T__18:
				_localctx = new NullConstantContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(158);
				match(T__18);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeContext extends ParserRuleContext {
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
	 
		public TypeContext() { }
		public void copyFrom(TypeContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class ArrayTypeContext extends TypeContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ArrayTypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterArrayType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitArrayType(this);
		}
	}
	public static class IntTypeContext extends TypeContext {
		public IntTypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterIntType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitIntType(this);
		}
	}
	public static class StringTypeContext extends TypeContext {
		public StringTypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterStringType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitStringType(this);
		}
	}
	public static class BoolTypeContext extends TypeContext {
		public BoolTypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBoolType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBoolType(this);
		}
	}
	public static class ClassTypeContext extends TypeContext {
		public TerminalNode IDENTIFIER() { return getToken(MxstarParser.IDENTIFIER, 0); }
		public ClassTypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterClassType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitClassType(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		return type(0);
	}

	private TypeContext type(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		TypeContext _localctx = new TypeContext(_ctx, _parentState);
		TypeContext _prevctx = _localctx;
		int _startState = 28;
		enterRecursionRule(_localctx, 28, RULE_type, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(166);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__19:
				{
				_localctx = new IntTypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(162);
				match(T__19);
				}
				break;
			case T__20:
				{
				_localctx = new BoolTypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(163);
				match(T__20);
				}
				break;
			case T__21:
				{
				_localctx = new StringTypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(164);
				match(T__21);
				}
				break;
			case IDENTIFIER:
				{
				_localctx = new ClassTypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(165);
				match(IDENTIFIER);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(172);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,19,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new ArrayTypeContext(new TypeContext(_parentctx, _parentState));
					pushNewRecursionContext(_localctx, _startState, RULE_type);
					setState(168);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(169);
					match(T__22);
					}
					} 
				}
				setState(174);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,19,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class VoidTypeContext extends ParserRuleContext {
		public VoidTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_voidType; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterVoidType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitVoidType(this);
		}
	}

	public final VoidTypeContext voidType() throws RecognitionException {
		VoidTypeContext _localctx = new VoidTypeContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_voidType);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(175);
			match(T__23);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	 
		public ExpressionContext() { }
		public void copyFrom(ExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class ConstantExpressionContext extends ExpressionContext {
		public ConstantContext constant() {
			return getRuleContext(ConstantContext.class,0);
		}
		public ConstantExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterConstantExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitConstantExpression(this);
		}
	}
	public static class ShiftExpressionContext extends ExpressionContext {
		public Token operator;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ShiftExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterShiftExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitShiftExpression(this);
		}
	}
	public static class BitOrExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public BitOrExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBitOrExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBitOrExpression(this);
		}
	}
	public static class AdditiveExpressionContext extends ExpressionContext {
		public Token operator;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public AdditiveExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterAdditiveExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitAdditiveExpression(this);
		}
	}
	public static class SubscriptExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public SubscriptExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterSubscriptExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitSubscriptExpression(this);
		}
	}
	public static class RelationalExpressionContext extends ExpressionContext {
		public Token operator;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public RelationalExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterRelationalExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitRelationalExpression(this);
		}
	}
	public static class IdentifierExpressionContext extends ExpressionContext {
		public TerminalNode IDENTIFIER() { return getToken(MxstarParser.IDENTIFIER, 0); }
		public IdentifierExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterIdentifierExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitIdentifierExpression(this);
		}
	}
	public static class AssignmentExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public AssignmentExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterAssignmentExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitAssignmentExpression(this);
		}
	}
	public static class MultiplicativeExpressionContext extends ExpressionContext {
		public Token operator;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public MultiplicativeExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterMultiplicativeExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitMultiplicativeExpression(this);
		}
	}
	public static class LogicalOrExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public LogicalOrExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterLogicalOrExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitLogicalOrExpression(this);
		}
	}
	public static class NewClassExpressionContext extends ExpressionContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public NewClassExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterNewClassExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitNewClassExpression(this);
		}
	}
	public static class BitXorExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public BitXorExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBitXorExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBitXorExpression(this);
		}
	}
	public static class MemberExpressionContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode IDENTIFIER() { return getToken(MxstarParser.IDENTIFIER, 0); }
		public MemberExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterMemberExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitMemberExpression(this);
		}
	}
	public static class PrefixExpressionContext extends ExpressionContext {
		public Token operator;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public PrefixExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterPrefixExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitPrefixExpression(this);
		}
	}
	public static class BitAndExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public BitAndExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBitAndExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBitAndExpression(this);
		}
	}
	public static class ThisExpressionContext extends ExpressionContext {
		public ThisExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterThisExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitThisExpression(this);
		}
	}
	public static class SuffixExpressionContext extends ExpressionContext {
		public Token operator;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public SuffixExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterSuffixExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitSuffixExpression(this);
		}
	}
	public static class EqualityExpressionContext extends ExpressionContext {
		public Token operator;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public EqualityExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterEqualityExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitEqualityExpression(this);
		}
	}
	public static class LogicalAndExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public LogicalAndExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterLogicalAndExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitLogicalAndExpression(this);
		}
	}
	public static class FunctionCallExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public FunctionCallExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterFunctionCallExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitFunctionCallExpression(this);
		}
	}
	public static class NewArrayExpressionContext extends ExpressionContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public NewArrayExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterNewArrayExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitNewArrayExpression(this);
		}
	}
	public static class UnaryExpressionContext extends ExpressionContext {
		public Token operator;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public UnaryExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterUnaryExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitUnaryExpression(this);
		}
	}
	public static class SubExpressionContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public SubExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterSubExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitSubExpression(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		return expression(0);
	}

	private ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState);
		ExpressionContext _prevctx = _localctx;
		int _startState = 32;
		enterRecursionRule(_localctx, 32, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(217);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,25,_ctx) ) {
			case 1:
				{
				_localctx = new ConstantExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(178);
				constant();
				}
				break;
			case 2:
				{
				_localctx = new IdentifierExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(179);
				match(IDENTIFIER);
				}
				break;
			case 3:
				{
				_localctx = new ThisExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(180);
				match(T__24);
				}
				break;
			case 4:
				{
				_localctx = new SubExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(181);
				match(T__2);
				setState(182);
				expression(0);
				setState(183);
				match(T__4);
				}
				break;
			case 5:
				{
				_localctx = new PrefixExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(185);
				((PrefixExpressionContext)_localctx).operator = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==T__25 || _la==T__26) ) {
					((PrefixExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(186);
				expression(15);
				}
				break;
			case 6:
				{
				_localctx = new UnaryExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(187);
				((UnaryExpressionContext)_localctx).operator = _input.LT(1);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << T__33))) != 0)) ) {
					((UnaryExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(188);
				expression(14);
				}
				break;
			case 7:
				{
				_localctx = new NewArrayExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(189);
				match(T__34);
				setState(190);
				type(0);
				setState(210);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case T__27:
					{
					{
					setState(195); 
					_errHandler.sync(this);
					_alt = 1;
					do {
						switch (_alt) {
						case 1:
							{
							{
							setState(191);
							match(T__27);
							setState(192);
							expression(0);
							setState(193);
							match(T__28);
							}
							}
							break;
						default:
							throw new NoViableAltException(this);
						}
						setState(197); 
						_errHandler.sync(this);
						_alt = getInterpreter().adaptivePredict(_input,20,_ctx);
					} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
					setState(202);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,21,_ctx);
					while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
						if ( _alt==1 ) {
							{
							{
							setState(199);
							match(T__22);
							}
							} 
						}
						setState(204);
						_errHandler.sync(this);
						_alt = getInterpreter().adaptivePredict(_input,21,_ctx);
					}
					}
					}
					break;
				case T__22:
					{
					setState(206); 
					_errHandler.sync(this);
					_alt = 1;
					do {
						switch (_alt) {
						case 1:
							{
							{
							setState(205);
							match(T__22);
							}
							}
							break;
						default:
							throw new NoViableAltException(this);
						}
						setState(208); 
						_errHandler.sync(this);
						_alt = getInterpreter().adaptivePredict(_input,22,_ctx);
					} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				}
				break;
			case 8:
				{
				_localctx = new NewClassExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(212);
				match(T__34);
				setState(213);
				type(0);
				setState(215);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,24,_ctx) ) {
				case 1:
					{
					setState(214);
					match(T__5);
					}
					break;
				}
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(277);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(275);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,28,_ctx) ) {
					case 1:
						{
						_localctx = new MultiplicativeExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(219);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(220);
						((MultiplicativeExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__35) | (1L << T__36) | (1L << T__37))) != 0)) ) {
							((MultiplicativeExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(221);
						expression(12);
						}
						break;
					case 2:
						{
						_localctx = new AdditiveExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(222);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(223);
						((AdditiveExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__30 || _la==T__31) ) {
							((AdditiveExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(224);
						expression(11);
						}
						break;
					case 3:
						{
						_localctx = new ShiftExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(225);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(226);
						((ShiftExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__38 || _la==T__39) ) {
							((ShiftExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(227);
						expression(10);
						}
						break;
					case 4:
						{
						_localctx = new RelationalExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(228);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(229);
						((RelationalExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__40) | (1L << T__41) | (1L << T__42) | (1L << T__43))) != 0)) ) {
							((RelationalExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(230);
						expression(9);
						}
						break;
					case 5:
						{
						_localctx = new EqualityExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(231);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(232);
						((EqualityExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__44 || _la==T__45) ) {
							((EqualityExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(233);
						expression(8);
						}
						break;
					case 6:
						{
						_localctx = new BitAndExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(234);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(235);
						match(T__46);
						setState(236);
						expression(7);
						}
						break;
					case 7:
						{
						_localctx = new BitOrExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(237);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(238);
						match(T__47);
						setState(239);
						expression(6);
						}
						break;
					case 8:
						{
						_localctx = new BitXorExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(240);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(241);
						match(T__48);
						setState(242);
						expression(5);
						}
						break;
					case 9:
						{
						_localctx = new LogicalAndExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(243);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(244);
						match(T__49);
						setState(245);
						expression(4);
						}
						break;
					case 10:
						{
						_localctx = new LogicalOrExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(246);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(247);
						match(T__50);
						setState(248);
						expression(3);
						}
						break;
					case 11:
						{
						_localctx = new AssignmentExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(249);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(250);
						match(T__0);
						setState(251);
						expression(1);
						}
						break;
					case 12:
						{
						_localctx = new SuffixExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(252);
						if (!(precpred(_ctx, 19))) throw new FailedPredicateException(this, "precpred(_ctx, 19)");
						setState(253);
						((SuffixExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__25 || _la==T__26) ) {
							((SuffixExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						}
						break;
					case 13:
						{
						_localctx = new SubscriptExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(254);
						if (!(precpred(_ctx, 18))) throw new FailedPredicateException(this, "precpred(_ctx, 18)");
						setState(255);
						match(T__27);
						setState(256);
						expression(0);
						setState(257);
						match(T__28);
						}
						break;
					case 14:
						{
						_localctx = new FunctionCallExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(259);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(260);
						match(T__2);
						setState(269);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << T__33) | (1L << T__34) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
							{
							setState(261);
							expression(0);
							setState(266);
							_errHandler.sync(this);
							_la = _input.LA(1);
							while (_la==T__3) {
								{
								{
								setState(262);
								match(T__3);
								setState(263);
								expression(0);
								}
								}
								setState(268);
								_errHandler.sync(this);
								_la = _input.LA(1);
							}
							}
						}

						setState(271);
						match(T__4);
						}
						break;
					case 15:
						{
						_localctx = new MemberExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(272);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(273);
						match(T__29);
						setState(274);
						match(IDENTIFIER);
						}
						break;
					}
					} 
				}
				setState(279);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 14:
			return type_sempred((TypeContext)_localctx, predIndex);
		case 16:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean type_sempred(TypeContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 1);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 1:
			return precpred(_ctx, 11);
		case 2:
			return precpred(_ctx, 10);
		case 3:
			return precpred(_ctx, 9);
		case 4:
			return precpred(_ctx, 8);
		case 5:
			return precpred(_ctx, 7);
		case 6:
			return precpred(_ctx, 6);
		case 7:
			return precpred(_ctx, 5);
		case 8:
			return precpred(_ctx, 4);
		case 9:
			return precpred(_ctx, 3);
		case 10:
			return precpred(_ctx, 2);
		case 11:
			return precpred(_ctx, 1);
		case 12:
			return precpred(_ctx, 19);
		case 13:
			return precpred(_ctx, 18);
		case 14:
			return precpred(_ctx, 17);
		case 15:
			return precpred(_ctx, 16);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3;\u011b\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\3\2\3\2\3\2\6\2(\n\2\r\2\16\2)\3\3\3\3\3\3\3\3\5\3\60\n\3\3\3\3\3\3\4"+
		"\3\4\5\4\66\n\4\3\4\5\49\n\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\7\4B\n\4\f\4"+
		"\16\4E\13\4\3\4\3\4\3\4\5\4J\n\4\3\4\3\4\3\5\3\5\3\5\3\5\3\5\7\5S\n\5"+
		"\f\5\16\5V\13\5\3\5\3\5\3\6\3\6\3\6\3\6\3\6\3\6\3\6\3\6\3\6\5\6c\n\6\3"+
		"\7\3\7\7\7g\n\7\f\7\16\7j\13\7\3\7\3\7\3\b\5\bo\n\b\3\b\3\b\3\t\3\t\3"+
		"\t\3\t\3\t\3\t\3\t\5\tz\n\t\3\n\3\n\3\n\3\n\3\n\3\n\3\13\3\13\3\13\5\13"+
		"\u0085\n\13\3\13\3\13\5\13\u0089\n\13\3\13\3\13\5\13\u008d\n\13\3\13\3"+
		"\13\3\13\3\f\3\f\3\f\3\r\3\r\3\r\3\16\3\16\5\16\u009a\n\16\3\16\3\16\3"+
		"\17\3\17\3\17\3\17\5\17\u00a2\n\17\3\20\3\20\3\20\3\20\3\20\5\20\u00a9"+
		"\n\20\3\20\3\20\7\20\u00ad\n\20\f\20\16\20\u00b0\13\20\3\21\3\21\3\22"+
		"\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22"+
		"\3\22\3\22\3\22\6\22\u00c6\n\22\r\22\16\22\u00c7\3\22\7\22\u00cb\n\22"+
		"\f\22\16\22\u00ce\13\22\3\22\6\22\u00d1\n\22\r\22\16\22\u00d2\5\22\u00d5"+
		"\n\22\3\22\3\22\3\22\5\22\u00da\n\22\5\22\u00dc\n\22\3\22\3\22\3\22\3"+
		"\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3"+
		"\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3"+
		"\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\7"+
		"\22\u010b\n\22\f\22\16\22\u010e\13\22\5\22\u0110\n\22\3\22\3\22\3\22\3"+
		"\22\7\22\u0116\n\22\f\22\16\22\u0119\13\22\3\22\2\4\36\"\23\2\4\6\b\n"+
		"\f\16\20\22\24\26\30\32\34\36 \"\2\n\3\2\23\24\3\2\34\35\3\2!$\3\2&(\3"+
		"\2!\"\3\2)*\3\2+.\3\2/\60\2\u0146\2\'\3\2\2\2\4+\3\2\2\2\6\65\3\2\2\2"+
		"\bM\3\2\2\2\nb\3\2\2\2\fd\3\2\2\2\16n\3\2\2\2\20r\3\2\2\2\22{\3\2\2\2"+
		"\24\u0081\3\2\2\2\26\u0091\3\2\2\2\30\u0094\3\2\2\2\32\u0097\3\2\2\2\34"+
		"\u00a1\3\2\2\2\36\u00a8\3\2\2\2 \u00b1\3\2\2\2\"\u00db\3\2\2\2$(\5\4\3"+
		"\2%(\5\6\4\2&(\5\b\5\2\'$\3\2\2\2\'%\3\2\2\2\'&\3\2\2\2()\3\2\2\2)\'\3"+
		"\2\2\2)*\3\2\2\2*\3\3\2\2\2+,\5\36\20\2,/\7\66\2\2-.\7\3\2\2.\60\5\"\22"+
		"\2/-\3\2\2\2/\60\3\2\2\2\60\61\3\2\2\2\61\62\7\4\2\2\62\5\3\2\2\2\63\66"+
		"\5\36\20\2\64\66\5 \21\2\65\63\3\2\2\2\65\64\3\2\2\2\668\3\2\2\2\679\7"+
		"\66\2\28\67\3\2\2\289\3\2\2\29I\3\2\2\2:;\7\5\2\2;<\5\36\20\2<C\7\66\2"+
		"\2=>\5\36\20\2>?\7\6\2\2?@\7\66\2\2@B\3\2\2\2A=\3\2\2\2BE\3\2\2\2CA\3"+
		"\2\2\2CD\3\2\2\2DF\3\2\2\2EC\3\2\2\2FG\7\7\2\2GJ\3\2\2\2HJ\7\b\2\2I:\3"+
		"\2\2\2IH\3\2\2\2JK\3\2\2\2KL\5\f\7\2L\7\3\2\2\2MN\7\t\2\2NO\7\66\2\2O"+
		"T\7\n\2\2PS\5\4\3\2QS\5\6\4\2RP\3\2\2\2RQ\3\2\2\2SV\3\2\2\2TR\3\2\2\2"+
		"TU\3\2\2\2UW\3\2\2\2VT\3\2\2\2WX\7\13\2\2X\t\3\2\2\2Yc\5\f\7\2Zc\5\16"+
		"\b\2[c\5\20\t\2\\c\5\24\13\2]c\5\22\n\2^c\5\26\f\2_c\5\30\r\2`c\5\32\16"+
		"\2ac\5\4\3\2bY\3\2\2\2bZ\3\2\2\2b[\3\2\2\2b\\\3\2\2\2b]\3\2\2\2b^\3\2"+
		"\2\2b_\3\2\2\2b`\3\2\2\2ba\3\2\2\2c\13\3\2\2\2dh\7\n\2\2eg\5\n\6\2fe\3"+
		"\2\2\2gj\3\2\2\2hf\3\2\2\2hi\3\2\2\2ik\3\2\2\2jh\3\2\2\2kl\7\13\2\2l\r"+
		"\3\2\2\2mo\5\"\22\2nm\3\2\2\2no\3\2\2\2op\3\2\2\2pq\7\4\2\2q\17\3\2\2"+
		"\2rs\7\f\2\2st\7\5\2\2tu\5\"\22\2uv\7\7\2\2vy\5\n\6\2wx\7\r\2\2xz\5\n"+
		"\6\2yw\3\2\2\2yz\3\2\2\2z\21\3\2\2\2{|\7\16\2\2|}\7\5\2\2}~\5\"\22\2~"+
		"\177\7\7\2\2\177\u0080\5\n\6\2\u0080\23\3\2\2\2\u0081\u0082\7\17\2\2\u0082"+
		"\u0084\7\5\2\2\u0083\u0085\5\"\22\2\u0084\u0083\3\2\2\2\u0084\u0085\3"+
		"\2\2\2\u0085\u0086\3\2\2\2\u0086\u0088\7\4\2\2\u0087\u0089\5\"\22\2\u0088"+
		"\u0087\3\2\2\2\u0088\u0089\3\2\2\2\u0089\u008a\3\2\2\2\u008a\u008c\7\4"+
		"\2\2\u008b\u008d\5\"\22\2\u008c\u008b\3\2\2\2\u008c\u008d\3\2\2\2\u008d"+
		"\u008e\3\2\2\2\u008e\u008f\7\7\2\2\u008f\u0090\5\n\6\2\u0090\25\3\2\2"+
		"\2\u0091\u0092\7\20\2\2\u0092\u0093\7\4\2\2\u0093\27\3\2\2\2\u0094\u0095"+
		"\7\21\2\2\u0095\u0096\7\4\2\2\u0096\31\3\2\2\2\u0097\u0099\7\22\2\2\u0098"+
		"\u009a\5\"\22\2\u0099\u0098\3\2\2\2\u0099\u009a\3\2\2\2\u009a\u009b\3"+
		"\2\2\2\u009b\u009c\7\4\2\2\u009c\33\3\2\2\2\u009d\u00a2\t\2\2\2\u009e"+
		"\u00a2\7\67\2\2\u009f\u00a2\78\2\2\u00a0\u00a2\7\25\2\2\u00a1\u009d\3"+
		"\2\2\2\u00a1\u009e\3\2\2\2\u00a1\u009f\3\2\2\2\u00a1\u00a0\3\2\2\2\u00a2"+
		"\35\3\2\2\2\u00a3\u00a4\b\20\1\2\u00a4\u00a9\7\26\2\2\u00a5\u00a9\7\27"+
		"\2\2\u00a6\u00a9\7\30\2\2\u00a7\u00a9\7\66\2\2\u00a8\u00a3\3\2\2\2\u00a8"+
		"\u00a5\3\2\2\2\u00a8\u00a6\3\2\2\2\u00a8\u00a7\3\2\2\2\u00a9\u00ae\3\2"+
		"\2\2\u00aa\u00ab\f\3\2\2\u00ab\u00ad\7\31\2\2\u00ac\u00aa\3\2\2\2\u00ad"+
		"\u00b0\3\2\2\2\u00ae\u00ac\3\2\2\2\u00ae\u00af\3\2\2\2\u00af\37\3\2\2"+
		"\2\u00b0\u00ae\3\2\2\2\u00b1\u00b2\7\32\2\2\u00b2!\3\2\2\2\u00b3\u00b4"+
		"\b\22\1\2\u00b4\u00dc\5\34\17\2\u00b5\u00dc\7\66\2\2\u00b6\u00dc\7\33"+
		"\2\2\u00b7\u00b8\7\5\2\2\u00b8\u00b9\5\"\22\2\u00b9\u00ba\7\7\2\2\u00ba"+
		"\u00dc\3\2\2\2\u00bb\u00bc\t\3\2\2\u00bc\u00dc\5\"\22\21\u00bd\u00be\t"+
		"\4\2\2\u00be\u00dc\5\"\22\20\u00bf\u00c0\7%\2\2\u00c0\u00d4\5\36\20\2"+
		"\u00c1\u00c2\7\36\2\2\u00c2\u00c3\5\"\22\2\u00c3\u00c4\7\37\2\2\u00c4"+
		"\u00c6\3\2\2\2\u00c5\u00c1\3\2\2\2\u00c6\u00c7\3\2\2\2\u00c7\u00c5\3\2"+
		"\2\2\u00c7\u00c8\3\2\2\2\u00c8\u00cc\3\2\2\2\u00c9\u00cb\7\31\2\2\u00ca"+
		"\u00c9\3\2\2\2\u00cb\u00ce\3\2\2\2\u00cc\u00ca\3\2\2\2\u00cc\u00cd\3\2"+
		"\2\2\u00cd\u00d5\3\2\2\2\u00ce\u00cc\3\2\2\2\u00cf\u00d1\7\31\2\2\u00d0"+
		"\u00cf\3\2\2\2\u00d1\u00d2\3\2\2\2\u00d2\u00d0\3\2\2\2\u00d2\u00d3\3\2"+
		"\2\2\u00d3\u00d5\3\2\2\2\u00d4\u00c5\3\2\2\2\u00d4\u00d0\3\2\2\2\u00d5"+
		"\u00dc\3\2\2\2\u00d6\u00d7\7%\2\2\u00d7\u00d9\5\36\20\2\u00d8\u00da\7"+
		"\b\2\2\u00d9\u00d8\3\2\2\2\u00d9\u00da\3\2\2\2\u00da\u00dc\3\2\2\2\u00db"+
		"\u00b3\3\2\2\2\u00db\u00b5\3\2\2\2\u00db\u00b6\3\2\2\2\u00db\u00b7\3\2"+
		"\2\2\u00db\u00bb\3\2\2\2\u00db\u00bd\3\2\2\2\u00db\u00bf\3\2\2\2\u00db"+
		"\u00d6\3\2\2\2\u00dc\u0117\3\2\2\2\u00dd\u00de\f\r\2\2\u00de\u00df\t\5"+
		"\2\2\u00df\u0116\5\"\22\16\u00e0\u00e1\f\f\2\2\u00e1\u00e2\t\6\2\2\u00e2"+
		"\u0116\5\"\22\r\u00e3\u00e4\f\13\2\2\u00e4\u00e5\t\7\2\2\u00e5\u0116\5"+
		"\"\22\f\u00e6\u00e7\f\n\2\2\u00e7\u00e8\t\b\2\2\u00e8\u0116\5\"\22\13"+
		"\u00e9\u00ea\f\t\2\2\u00ea\u00eb\t\t\2\2\u00eb\u0116\5\"\22\n\u00ec\u00ed"+
		"\f\b\2\2\u00ed\u00ee\7\61\2\2\u00ee\u0116\5\"\22\t\u00ef\u00f0\f\7\2\2"+
		"\u00f0\u00f1\7\62\2\2\u00f1\u0116\5\"\22\b\u00f2\u00f3\f\6\2\2\u00f3\u00f4"+
		"\7\63\2\2\u00f4\u0116\5\"\22\7\u00f5\u00f6\f\5\2\2\u00f6\u00f7\7\64\2"+
		"\2\u00f7\u0116\5\"\22\6\u00f8\u00f9\f\4\2\2\u00f9\u00fa\7\65\2\2\u00fa"+
		"\u0116\5\"\22\5\u00fb\u00fc\f\3\2\2\u00fc\u00fd\7\3\2\2\u00fd\u0116\5"+
		"\"\22\3\u00fe\u00ff\f\25\2\2\u00ff\u0116\t\3\2\2\u0100\u0101\f\24\2\2"+
		"\u0101\u0102\7\36\2\2\u0102\u0103\5\"\22\2\u0103\u0104\7\37\2\2\u0104"+
		"\u0116\3\2\2\2\u0105\u0106\f\23\2\2\u0106\u010f\7\5\2\2\u0107\u010c\5"+
		"\"\22\2\u0108\u0109\7\6\2\2\u0109\u010b\5\"\22\2\u010a\u0108\3\2\2\2\u010b"+
		"\u010e\3\2\2\2\u010c\u010a\3\2\2\2\u010c\u010d\3\2\2\2\u010d\u0110\3\2"+
		"\2\2\u010e\u010c\3\2\2\2\u010f\u0107\3\2\2\2\u010f\u0110\3\2\2\2\u0110"+
		"\u0111\3\2\2\2\u0111\u0116\7\7\2\2\u0112\u0113\f\22\2\2\u0113\u0114\7"+
		" \2\2\u0114\u0116\7\66\2\2\u0115\u00dd\3\2\2\2\u0115\u00e0\3\2\2\2\u0115"+
		"\u00e3\3\2\2\2\u0115\u00e6\3\2\2\2\u0115\u00e9\3\2\2\2\u0115\u00ec\3\2"+
		"\2\2\u0115\u00ef\3\2\2\2\u0115\u00f2\3\2\2\2\u0115\u00f5\3\2\2\2\u0115"+
		"\u00f8\3\2\2\2\u0115\u00fb\3\2\2\2\u0115\u00fe\3\2\2\2\u0115\u0100\3\2"+
		"\2\2\u0115\u0105\3\2\2\2\u0115\u0112\3\2\2\2\u0116\u0119\3\2\2\2\u0117"+
		"\u0115\3\2\2\2\u0117\u0118\3\2\2\2\u0118#\3\2\2\2\u0119\u0117\3\2\2\2"+
		" \')/\658CIRTbhny\u0084\u0088\u008c\u0099\u00a1\u00a8\u00ae\u00c7\u00cc"+
		"\u00d2\u00d4\u00d9\u00db\u010c\u010f\u0115\u0117";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}