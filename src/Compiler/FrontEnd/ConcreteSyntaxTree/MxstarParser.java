// Generated from Mxstar.g4 by ANTLR 4.5.1
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
	static { RuntimeMetaData.checkVersion("4.5.1", RuntimeMetaData.VERSION); }

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
		T__45=46, T__46=47, T__47=48, T__48=49, IDENTIFIER=50, INTEGER=51, STRING=52, 
		LINECOMMENT=53, BLOCKCOMMENT=54, WHITESPACE=55;
	public static final int
		RULE_program = 0, RULE_variableDeclarationStatement = 1, RULE_functionDeclaration = 2, 
		RULE_classDeclaration = 3, RULE_statement = 4, RULE_blockStatement = 5, 
		RULE_expressionStatement = 6, RULE_selectionStatement = 7, RULE_iterationStatement = 8, 
		RULE_jumpStatement = 9, RULE_constant = 10, RULE_type = 11, RULE_expression = 12;
	public static final String[] ruleNames = {
		"program", "variableDeclarationStatement", "functionDeclaration", "classDeclaration", 
		"statement", "blockStatement", "expressionStatement", "selectionStatement", 
		"iterationStatement", "jumpStatement", "constant", "type", "expression"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'='", "';'", "'('", "','", "')'", "'class'", "'{'", "'}'", "'if'", 
		"'else'", "'while'", "'for'", "'continue'", "'break'", "'return'", "'true'", 
		"'false'", "'null'", "'void'", "'int'", "'bool'", "'string'", "'[]'", 
		"'++'", "'--'", "'['", "']'", "'.'", "'+'", "'-'", "'!'", "'~'", "'new'", 
		"'*'", "'/'", "'%'", "'<<'", "'>>'", "'<'", "'>'", "'<='", "'>='", "'=='", 
		"'!='", "'&'", "'^'", "'|'", "'&&'", "'||'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, "IDENTIFIER", "INTEGER", "STRING", "LINECOMMENT", "BLOCKCOMMENT", 
		"WHITESPACE"
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
			setState(29); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				setState(29);
				switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
				case 1:
					{
					setState(26);
					variableDeclarationStatement();
					}
					break;
				case 2:
					{
					setState(27);
					functionDeclaration();
					}
					break;
				case 3:
					{
					setState(28);
					classDeclaration();
					}
					break;
				}
				}
				setState(31); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__5) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << T__21) | (1L << IDENTIFIER))) != 0) );
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
			setState(33);
			type(0);
			setState(34);
			match(IDENTIFIER);
			setState(37);
			_la = _input.LA(1);
			if (_la==T__0) {
				{
				setState(35);
				match(T__0);
				setState(36);
				expression(0);
				}
			}

			setState(39);
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
		public List<TypeContext> type() {
			return getRuleContexts(TypeContext.class);
		}
		public TypeContext type(int i) {
			return getRuleContext(TypeContext.class,i);
		}
		public BlockStatementContext blockStatement() {
			return getRuleContext(BlockStatementContext.class,0);
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
			setState(41);
			type(0);
			setState(43);
			_la = _input.LA(1);
			if (_la==IDENTIFIER) {
				{
				setState(42);
				match(IDENTIFIER);
				}
			}

			setState(45);
			match(T__2);
			setState(57);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << T__21) | (1L << IDENTIFIER))) != 0)) {
				{
				setState(46);
				type(0);
				setState(47);
				match(IDENTIFIER);
				setState(54);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__3) {
					{
					{
					setState(48);
					match(T__3);
					setState(49);
					type(0);
					setState(50);
					match(IDENTIFIER);
					}
					}
					setState(56);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(59);
			match(T__4);
			setState(60);
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
			setState(62);
			match(T__5);
			setState(63);
			match(IDENTIFIER);
			setState(64);
			match(T__6);
			setState(69);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << T__21) | (1L << IDENTIFIER))) != 0)) {
				{
				setState(67);
				switch ( getInterpreter().adaptivePredict(_input,6,_ctx) ) {
				case 1:
					{
					setState(65);
					variableDeclarationStatement();
					}
					break;
				case 2:
					{
					setState(66);
					functionDeclaration();
					}
					break;
				}
				}
				setState(71);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(72);
			match(T__7);
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
		public SelectionStatementContext selectionStatement() {
			return getRuleContext(SelectionStatementContext.class,0);
		}
		public IterationStatementContext iterationStatement() {
			return getRuleContext(IterationStatementContext.class,0);
		}
		public JumpStatementContext jumpStatement() {
			return getRuleContext(JumpStatementContext.class,0);
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
			setState(80);
			switch ( getInterpreter().adaptivePredict(_input,8,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(74);
				blockStatement();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(75);
				expressionStatement();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(76);
				selectionStatement();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(77);
				iterationStatement();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(78);
				jumpStatement();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(79);
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
			setState(82);
			match(T__6);
			setState(86);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__1) | (1L << T__2) | (1L << T__6) | (1L << T__8) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << T__21) | (1L << T__23) | (1L << T__24) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
				{
				{
				setState(83);
				statement();
				}
				}
				setState(88);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(89);
			match(T__7);
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
			setState(92);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__23) | (1L << T__24) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
				{
				setState(91);
				expression(0);
				}
			}

			setState(94);
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

	public static class SelectionStatementContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public SelectionStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_selectionStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterSelectionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitSelectionStatement(this);
		}
	}

	public final SelectionStatementContext selectionStatement() throws RecognitionException {
		SelectionStatementContext _localctx = new SelectionStatementContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_selectionStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(96);
			match(T__8);
			setState(97);
			match(T__2);
			setState(98);
			expression(0);
			setState(99);
			match(T__4);
			setState(100);
			statement();
			setState(103);
			switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
			case 1:
				{
				setState(101);
				match(T__9);
				setState(102);
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

	public static class IterationStatementContext extends ParserRuleContext {
		public IterationStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_iterationStatement; }
	 
		public IterationStatementContext() { }
		public void copyFrom(IterationStatementContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class WhileStatementContext extends IterationStatementContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public WhileStatementContext(IterationStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterWhileStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitWhileStatement(this);
		}
	}
	public static class ForStatementContext extends IterationStatementContext {
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ForStatementContext(IterationStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterForStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitForStatement(this);
		}
	}

	public final IterationStatementContext iterationStatement() throws RecognitionException {
		IterationStatementContext _localctx = new IterationStatementContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_iterationStatement);
		int _la;
		try {
			setState(126);
			switch (_input.LA(1)) {
			case T__10:
				_localctx = new WhileStatementContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(105);
				match(T__10);
				setState(106);
				match(T__2);
				setState(107);
				expression(0);
				setState(108);
				match(T__4);
				setState(109);
				statement();
				}
				break;
			case T__11:
				_localctx = new ForStatementContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(111);
				match(T__11);
				setState(112);
				match(T__2);
				setState(114);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__23) | (1L << T__24) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
					{
					setState(113);
					expression(0);
					}
				}

				setState(116);
				match(T__1);
				setState(118);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__23) | (1L << T__24) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
					{
					setState(117);
					expression(0);
					}
				}

				setState(120);
				match(T__1);
				setState(122);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__1) | (1L << T__2) | (1L << T__6) | (1L << T__8) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << T__21) | (1L << T__23) | (1L << T__24) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
					{
					setState(121);
					statement();
					}
				}

				setState(124);
				match(T__4);
				setState(125);
				statement();
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

	public static class JumpStatementContext extends ParserRuleContext {
		public JumpStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_jumpStatement; }
	 
		public JumpStatementContext() { }
		public void copyFrom(JumpStatementContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class BreakStatementContext extends JumpStatementContext {
		public BreakStatementContext(JumpStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterBreakStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitBreakStatement(this);
		}
	}
	public static class ContinueStatementContext extends JumpStatementContext {
		public ContinueStatementContext(JumpStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterContinueStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitContinueStatement(this);
		}
	}
	public static class ReturnStatementContext extends JumpStatementContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ReturnStatementContext(JumpStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterReturnStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitReturnStatement(this);
		}
	}

	public final JumpStatementContext jumpStatement() throws RecognitionException {
		JumpStatementContext _localctx = new JumpStatementContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_jumpStatement);
		int _la;
		try {
			setState(137);
			switch (_input.LA(1)) {
			case T__12:
				_localctx = new ContinueStatementContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(128);
				match(T__12);
				setState(129);
				match(T__1);
				}
				break;
			case T__13:
				_localctx = new BreakStatementContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(130);
				match(T__13);
				setState(131);
				match(T__1);
				}
				break;
			case T__14:
				_localctx = new ReturnStatementContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(132);
				match(T__14);
				setState(134);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__23) | (1L << T__24) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
					{
					setState(133);
					expression(0);
					}
				}

				setState(136);
				match(T__1);
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

	public static class ConstantContext extends ParserRuleContext {
		public TerminalNode INTEGER() { return getToken(MxstarParser.INTEGER, 0); }
		public TerminalNode STRING() { return getToken(MxstarParser.STRING, 0); }
		public ConstantContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constant; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterConstant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitConstant(this);
		}
	}

	public final ConstantContext constant() throws RecognitionException {
		ConstantContext _localctx = new ConstantContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_constant);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(139);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << INTEGER) | (1L << STRING))) != 0)) ) {
			_errHandler.recoverInline(this);
			} else {
				consume();
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
	public static class VoidTypeContext extends TypeContext {
		public VoidTypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterVoidType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitVoidType(this);
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
		int _startState = 22;
		enterRecursionRule(_localctx, 22, RULE_type, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(147);
			switch (_input.LA(1)) {
			case T__18:
				{
				_localctx = new VoidTypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(142);
				match(T__18);
				}
				break;
			case T__19:
				{
				_localctx = new IntTypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(143);
				match(T__19);
				}
				break;
			case T__20:
				{
				_localctx = new BoolTypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(144);
				match(T__20);
				}
				break;
			case T__21:
				{
				_localctx = new StringTypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(145);
				match(T__21);
				}
				break;
			case IDENTIFIER:
				{
				_localctx = new ClassTypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(146);
				match(IDENTIFIER);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(153);
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
					setState(149);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(150);
					match(T__22);
					}
					} 
				}
				setState(155);
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
	public static class InclusiveOrExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public InclusiveOrExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterInclusiveOrExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitInclusiveOrExpression(this);
		}
	}
	public static class NewExpressionContext extends ExpressionContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public NewExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterNewExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitNewExpression(this);
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
	public static class VariableExpressionContext extends ExpressionContext {
		public TerminalNode IDENTIFIER() { return getToken(MxstarParser.IDENTIFIER, 0); }
		public VariableExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterVariableExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitVariableExpression(this);
		}
	}
	public static class AndExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public AndExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterAndExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitAndExpression(this);
		}
	}
	public static class ExclusiveOrExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ExclusiveOrExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterExclusiveOrExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitExclusiveOrExpression(this);
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
	public static class FieldExpressionContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode IDENTIFIER() { return getToken(MxstarParser.IDENTIFIER, 0); }
		public FieldExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterFieldExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitFieldExpression(this);
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
	public static class PostfixExpressionContext extends ExpressionContext {
		public Token operator;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public PostfixExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).enterPostfixExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxstarListener ) ((MxstarListener)listener).exitPostfixExpression(this);
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
		int _startState = 24;
		enterRecursionRule(_localctx, 24, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(183);
			switch (_input.LA(1)) {
			case T__23:
			case T__24:
			case T__28:
			case T__29:
			case T__30:
			case T__31:
				{
				_localctx = new UnaryExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(157);
				((UnaryExpressionContext)_localctx).operator = _input.LT(1);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__23) | (1L << T__24) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31))) != 0)) ) {
					((UnaryExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
				} else {
					consume();
				}
				setState(158);
				expression(13);
				}
				break;
			case T__15:
			case T__16:
			case T__17:
			case INTEGER:
			case STRING:
				{
				_localctx = new ConstantExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(159);
				constant();
				}
				break;
			case IDENTIFIER:
				{
				_localctx = new VariableExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(160);
				match(IDENTIFIER);
				}
				break;
			case T__2:
				{
				_localctx = new SubExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(161);
				match(T__2);
				setState(162);
				expression(0);
				setState(163);
				match(T__4);
				}
				break;
			case T__32:
				{
				_localctx = new NewExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(165);
				match(T__32);
				setState(166);
				type(0);
				setState(173);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,20,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(167);
						match(T__25);
						setState(168);
						expression(0);
						setState(169);
						match(T__26);
						}
						} 
					}
					setState(175);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,20,_ctx);
				}
				setState(180);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,21,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(176);
						match(T__25);
						setState(177);
						match(T__26);
						}
						} 
					}
					setState(182);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,21,_ctx);
				}
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(243);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,26,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(241);
					switch ( getInterpreter().adaptivePredict(_input,25,_ctx) ) {
					case 1:
						{
						_localctx = new MultiplicativeExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(185);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(186);
						((MultiplicativeExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__33) | (1L << T__34) | (1L << T__35))) != 0)) ) {
							((MultiplicativeExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						} else {
							consume();
						}
						setState(187);
						expression(12);
						}
						break;
					case 2:
						{
						_localctx = new AdditiveExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(188);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(189);
						((AdditiveExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__28 || _la==T__29) ) {
							((AdditiveExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						} else {
							consume();
						}
						setState(190);
						expression(11);
						}
						break;
					case 3:
						{
						_localctx = new ShiftExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(191);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(192);
						((ShiftExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__36 || _la==T__37) ) {
							((ShiftExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						} else {
							consume();
						}
						setState(193);
						expression(10);
						}
						break;
					case 4:
						{
						_localctx = new RelationalExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(194);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(195);
						((RelationalExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__38) | (1L << T__39) | (1L << T__40) | (1L << T__41))) != 0)) ) {
							((RelationalExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						} else {
							consume();
						}
						setState(196);
						expression(9);
						}
						break;
					case 5:
						{
						_localctx = new EqualityExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(197);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(198);
						((EqualityExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__42 || _la==T__43) ) {
							((EqualityExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						} else {
							consume();
						}
						setState(199);
						expression(8);
						}
						break;
					case 6:
						{
						_localctx = new AndExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(200);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(201);
						match(T__44);
						setState(202);
						expression(7);
						}
						break;
					case 7:
						{
						_localctx = new ExclusiveOrExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(203);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(204);
						match(T__45);
						setState(205);
						expression(6);
						}
						break;
					case 8:
						{
						_localctx = new InclusiveOrExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(206);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(207);
						match(T__46);
						setState(208);
						expression(5);
						}
						break;
					case 9:
						{
						_localctx = new LogicalAndExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(209);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(210);
						match(T__47);
						setState(211);
						expression(4);
						}
						break;
					case 10:
						{
						_localctx = new LogicalOrExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(212);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(213);
						match(T__48);
						setState(214);
						expression(3);
						}
						break;
					case 11:
						{
						_localctx = new AssignmentExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(215);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(216);
						match(T__0);
						setState(217);
						expression(1);
						}
						break;
					case 12:
						{
						_localctx = new PostfixExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(218);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(219);
						((PostfixExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__23 || _la==T__24) ) {
							((PostfixExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						} else {
							consume();
						}
						}
						break;
					case 13:
						{
						_localctx = new SubscriptExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(220);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(221);
						match(T__25);
						setState(222);
						expression(0);
						setState(223);
						match(T__26);
						}
						break;
					case 14:
						{
						_localctx = new FunctionCallExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(225);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(226);
						match(T__2);
						setState(235);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__23) | (1L << T__24) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
							{
							setState(227);
							expression(0);
							setState(232);
							_errHandler.sync(this);
							_la = _input.LA(1);
							while (_la==T__3) {
								{
								{
								setState(228);
								match(T__3);
								setState(229);
								expression(0);
								}
								}
								setState(234);
								_errHandler.sync(this);
								_la = _input.LA(1);
							}
							}
						}

						setState(237);
						match(T__4);
						}
						break;
					case 15:
						{
						_localctx = new FieldExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(238);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(239);
						match(T__27);
						setState(240);
						match(IDENTIFIER);
						}
						break;
					}
					} 
				}
				setState(245);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,26,_ctx);
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
		case 11:
			return type_sempred((TypeContext)_localctx, predIndex);
		case 12:
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
			return precpred(_ctx, 17);
		case 13:
			return precpred(_ctx, 16);
		case 14:
			return precpred(_ctx, 15);
		case 15:
			return precpred(_ctx, 14);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\39\u00f9\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\3\2\3\2\3\2\6\2 \n\2\r\2\16\2!\3\3\3\3\3"+
		"\3\3\3\5\3(\n\3\3\3\3\3\3\4\3\4\5\4.\n\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\7"+
		"\4\67\n\4\f\4\16\4:\13\4\5\4<\n\4\3\4\3\4\3\4\3\5\3\5\3\5\3\5\3\5\7\5"+
		"F\n\5\f\5\16\5I\13\5\3\5\3\5\3\6\3\6\3\6\3\6\3\6\3\6\5\6S\n\6\3\7\3\7"+
		"\7\7W\n\7\f\7\16\7Z\13\7\3\7\3\7\3\b\5\b_\n\b\3\b\3\b\3\t\3\t\3\t\3\t"+
		"\3\t\3\t\3\t\5\tj\n\t\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\5\nu\n\n\3\n"+
		"\3\n\5\ny\n\n\3\n\3\n\5\n}\n\n\3\n\3\n\5\n\u0081\n\n\3\13\3\13\3\13\3"+
		"\13\3\13\3\13\5\13\u0089\n\13\3\13\5\13\u008c\n\13\3\f\3\f\3\r\3\r\3\r"+
		"\3\r\3\r\3\r\5\r\u0096\n\r\3\r\3\r\7\r\u009a\n\r\f\r\16\r\u009d\13\r\3"+
		"\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3"+
		"\16\7\16\u00ae\n\16\f\16\16\16\u00b1\13\16\3\16\3\16\7\16\u00b5\n\16\f"+
		"\16\16\16\u00b8\13\16\5\16\u00ba\n\16\3\16\3\16\3\16\3\16\3\16\3\16\3"+
		"\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3"+
		"\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3"+
		"\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\7\16\u00e9\n\16"+
		"\f\16\16\16\u00ec\13\16\5\16\u00ee\n\16\3\16\3\16\3\16\3\16\7\16\u00f4"+
		"\n\16\f\16\16\16\u00f7\13\16\3\16\2\4\30\32\17\2\4\6\b\n\f\16\20\22\24"+
		"\26\30\32\2\n\4\2\22\24\65\66\4\2\32\33\37\"\3\2$&\3\2\37 \3\2\'(\3\2"+
		"),\3\2-.\3\2\32\33\u011f\2\37\3\2\2\2\4#\3\2\2\2\6+\3\2\2\2\b@\3\2\2\2"+
		"\nR\3\2\2\2\fT\3\2\2\2\16^\3\2\2\2\20b\3\2\2\2\22\u0080\3\2\2\2\24\u008b"+
		"\3\2\2\2\26\u008d\3\2\2\2\30\u0095\3\2\2\2\32\u00b9\3\2\2\2\34 \5\4\3"+
		"\2\35 \5\6\4\2\36 \5\b\5\2\37\34\3\2\2\2\37\35\3\2\2\2\37\36\3\2\2\2 "+
		"!\3\2\2\2!\37\3\2\2\2!\"\3\2\2\2\"\3\3\2\2\2#$\5\30\r\2$\'\7\64\2\2%&"+
		"\7\3\2\2&(\5\32\16\2\'%\3\2\2\2\'(\3\2\2\2()\3\2\2\2)*\7\4\2\2*\5\3\2"+
		"\2\2+-\5\30\r\2,.\7\64\2\2-,\3\2\2\2-.\3\2\2\2./\3\2\2\2/;\7\5\2\2\60"+
		"\61\5\30\r\2\618\7\64\2\2\62\63\7\6\2\2\63\64\5\30\r\2\64\65\7\64\2\2"+
		"\65\67\3\2\2\2\66\62\3\2\2\2\67:\3\2\2\28\66\3\2\2\289\3\2\2\29<\3\2\2"+
		"\2:8\3\2\2\2;\60\3\2\2\2;<\3\2\2\2<=\3\2\2\2=>\7\7\2\2>?\5\f\7\2?\7\3"+
		"\2\2\2@A\7\b\2\2AB\7\64\2\2BG\7\t\2\2CF\5\4\3\2DF\5\6\4\2EC\3\2\2\2ED"+
		"\3\2\2\2FI\3\2\2\2GE\3\2\2\2GH\3\2\2\2HJ\3\2\2\2IG\3\2\2\2JK\7\n\2\2K"+
		"\t\3\2\2\2LS\5\f\7\2MS\5\16\b\2NS\5\20\t\2OS\5\22\n\2PS\5\24\13\2QS\5"+
		"\4\3\2RL\3\2\2\2RM\3\2\2\2RN\3\2\2\2RO\3\2\2\2RP\3\2\2\2RQ\3\2\2\2S\13"+
		"\3\2\2\2TX\7\t\2\2UW\5\n\6\2VU\3\2\2\2WZ\3\2\2\2XV\3\2\2\2XY\3\2\2\2Y"+
		"[\3\2\2\2ZX\3\2\2\2[\\\7\n\2\2\\\r\3\2\2\2]_\5\32\16\2^]\3\2\2\2^_\3\2"+
		"\2\2_`\3\2\2\2`a\7\4\2\2a\17\3\2\2\2bc\7\13\2\2cd\7\5\2\2de\5\32\16\2"+
		"ef\7\7\2\2fi\5\n\6\2gh\7\f\2\2hj\5\n\6\2ig\3\2\2\2ij\3\2\2\2j\21\3\2\2"+
		"\2kl\7\r\2\2lm\7\5\2\2mn\5\32\16\2no\7\7\2\2op\5\n\6\2p\u0081\3\2\2\2"+
		"qr\7\16\2\2rt\7\5\2\2su\5\32\16\2ts\3\2\2\2tu\3\2\2\2uv\3\2\2\2vx\7\4"+
		"\2\2wy\5\32\16\2xw\3\2\2\2xy\3\2\2\2yz\3\2\2\2z|\7\4\2\2{}\5\n\6\2|{\3"+
		"\2\2\2|}\3\2\2\2}~\3\2\2\2~\177\7\7\2\2\177\u0081\5\n\6\2\u0080k\3\2\2"+
		"\2\u0080q\3\2\2\2\u0081\23\3\2\2\2\u0082\u0083\7\17\2\2\u0083\u008c\7"+
		"\4\2\2\u0084\u0085\7\20\2\2\u0085\u008c\7\4\2\2\u0086\u0088\7\21\2\2\u0087"+
		"\u0089\5\32\16\2\u0088\u0087\3\2\2\2\u0088\u0089\3\2\2\2\u0089\u008a\3"+
		"\2\2\2\u008a\u008c\7\4\2\2\u008b\u0082\3\2\2\2\u008b\u0084\3\2\2\2\u008b"+
		"\u0086\3\2\2\2\u008c\25\3\2\2\2\u008d\u008e\t\2\2\2\u008e\27\3\2\2\2\u008f"+
		"\u0090\b\r\1\2\u0090\u0096\7\25\2\2\u0091\u0096\7\26\2\2\u0092\u0096\7"+
		"\27\2\2\u0093\u0096\7\30\2\2\u0094\u0096\7\64\2\2\u0095\u008f\3\2\2\2"+
		"\u0095\u0091\3\2\2\2\u0095\u0092\3\2\2\2\u0095\u0093\3\2\2\2\u0095\u0094"+
		"\3\2\2\2\u0096\u009b\3\2\2\2\u0097\u0098\f\3\2\2\u0098\u009a\7\31\2\2"+
		"\u0099\u0097\3\2\2\2\u009a\u009d\3\2\2\2\u009b\u0099\3\2\2\2\u009b\u009c"+
		"\3\2\2\2\u009c\31\3\2\2\2\u009d\u009b\3\2\2\2\u009e\u009f\b\16\1\2\u009f"+
		"\u00a0\t\3\2\2\u00a0\u00ba\5\32\16\17\u00a1\u00ba\5\26\f\2\u00a2\u00ba"+
		"\7\64\2\2\u00a3\u00a4\7\5\2\2\u00a4\u00a5\5\32\16\2\u00a5\u00a6\7\7\2"+
		"\2\u00a6\u00ba\3\2\2\2\u00a7\u00a8\7#\2\2\u00a8\u00af\5\30\r\2\u00a9\u00aa"+
		"\7\34\2\2\u00aa\u00ab\5\32\16\2\u00ab\u00ac\7\35\2\2\u00ac\u00ae\3\2\2"+
		"\2\u00ad\u00a9\3\2\2\2\u00ae\u00b1\3\2\2\2\u00af\u00ad\3\2\2\2\u00af\u00b0"+
		"\3\2\2\2\u00b0\u00b6\3\2\2\2\u00b1\u00af\3\2\2\2\u00b2\u00b3\7\34\2\2"+
		"\u00b3\u00b5\7\35\2\2\u00b4\u00b2\3\2\2\2\u00b5\u00b8\3\2\2\2\u00b6\u00b4"+
		"\3\2\2\2\u00b6\u00b7\3\2\2\2\u00b7\u00ba\3\2\2\2\u00b8\u00b6\3\2\2\2\u00b9"+
		"\u009e\3\2\2\2\u00b9\u00a1\3\2\2\2\u00b9\u00a2\3\2\2\2\u00b9\u00a3\3\2"+
		"\2\2\u00b9\u00a7\3\2\2\2\u00ba\u00f5\3\2\2\2\u00bb\u00bc\f\r\2\2\u00bc"+
		"\u00bd\t\4\2\2\u00bd\u00f4\5\32\16\16\u00be\u00bf\f\f\2\2\u00bf\u00c0"+
		"\t\5\2\2\u00c0\u00f4\5\32\16\r\u00c1\u00c2\f\13\2\2\u00c2\u00c3\t\6\2"+
		"\2\u00c3\u00f4\5\32\16\f\u00c4\u00c5\f\n\2\2\u00c5\u00c6\t\7\2\2\u00c6"+
		"\u00f4\5\32\16\13\u00c7\u00c8\f\t\2\2\u00c8\u00c9\t\b\2\2\u00c9\u00f4"+
		"\5\32\16\n\u00ca\u00cb\f\b\2\2\u00cb\u00cc\7/\2\2\u00cc\u00f4\5\32\16"+
		"\t\u00cd\u00ce\f\7\2\2\u00ce\u00cf\7\60\2\2\u00cf\u00f4\5\32\16\b\u00d0"+
		"\u00d1\f\6\2\2\u00d1\u00d2\7\61\2\2\u00d2\u00f4\5\32\16\7\u00d3\u00d4"+
		"\f\5\2\2\u00d4\u00d5\7\62\2\2\u00d5\u00f4\5\32\16\6\u00d6\u00d7\f\4\2"+
		"\2\u00d7\u00d8\7\63\2\2\u00d8\u00f4\5\32\16\5\u00d9\u00da\f\3\2\2\u00da"+
		"\u00db\7\3\2\2\u00db\u00f4\5\32\16\3\u00dc\u00dd\f\23\2\2\u00dd\u00f4"+
		"\t\t\2\2\u00de\u00df\f\22\2\2\u00df\u00e0\7\34\2\2\u00e0\u00e1\5\32\16"+
		"\2\u00e1\u00e2\7\35\2\2\u00e2\u00f4\3\2\2\2\u00e3\u00e4\f\21\2\2\u00e4"+
		"\u00ed\7\5\2\2\u00e5\u00ea\5\32\16\2\u00e6\u00e7\7\6\2\2\u00e7\u00e9\5"+
		"\32\16\2\u00e8\u00e6\3\2\2\2\u00e9\u00ec\3\2\2\2\u00ea\u00e8\3\2\2\2\u00ea"+
		"\u00eb\3\2\2\2\u00eb\u00ee\3\2\2\2\u00ec\u00ea\3\2\2\2\u00ed\u00e5\3\2"+
		"\2\2\u00ed\u00ee\3\2\2\2\u00ee\u00ef\3\2\2\2\u00ef\u00f4\7\7\2\2\u00f0"+
		"\u00f1\f\20\2\2\u00f1\u00f2\7\36\2\2\u00f2\u00f4\7\64\2\2\u00f3\u00bb"+
		"\3\2\2\2\u00f3\u00be\3\2\2\2\u00f3\u00c1\3\2\2\2\u00f3\u00c4\3\2\2\2\u00f3"+
		"\u00c7\3\2\2\2\u00f3\u00ca\3\2\2\2\u00f3\u00cd\3\2\2\2\u00f3\u00d0\3\2"+
		"\2\2\u00f3\u00d3\3\2\2\2\u00f3\u00d6\3\2\2\2\u00f3\u00d9\3\2\2\2\u00f3"+
		"\u00dc\3\2\2\2\u00f3\u00de\3\2\2\2\u00f3\u00e3\3\2\2\2\u00f3\u00f0\3\2"+
		"\2\2\u00f4\u00f7\3\2\2\2\u00f5\u00f3\3\2\2\2\u00f5\u00f6\3\2\2\2\u00f6"+
		"\33\3\2\2\2\u00f7\u00f5\3\2\2\2\35\37!\'-8;EGRX^itx|\u0080\u0088\u008b"+
		"\u0095\u009b\u00af\u00b6\u00b9\u00ea\u00ed\u00f3\u00f5";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}