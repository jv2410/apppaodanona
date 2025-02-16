.class public Lbr/com/macautomacao/maccomanda/ActivityProduto;
.super Lbr/com/macautomacao/maccomanda/UtilActivity;
.source "ActivityProduto.java"


# instance fields
.field private final RESULTADO_BUSCA_PRODUTOS:I

.field private _obs:Ljava/lang/String;

.field private _ocultouTeclado:Z

.field private descricaoProduto:Ljava/lang/String;

.field public handlerDescricaoProduto:Landroid/os/Handler;

.field private produto:Lbr/com/macautomacao/maccomanda/EntidadeProduto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/UtilActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->_ocultouTeclado:Z

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->RESULTADO_BUSCA_PRODUTOS:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->_obs:Ljava/lang/String;

    .line 226
    new-instance v0, Lbr/com/macautomacao/maccomanda/ActivityProduto$8;

    invoke-direct {v0, p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto$8;-><init>(Lbr/com/macautomacao/maccomanda/ActivityProduto;)V

    iput-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->handlerDescricaoProduto:Landroid/os/Handler;

    return-void
.end method

.method private AbrirBuscaProdutos()V
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f0d0074

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterBtn(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityProduto$2;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto$2;-><init>(Lbr/com/macautomacao/maccomanda/ActivityProduto;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method private AumentarQuantidade()V
    .locals 2

    .prologue
    .line 179
    const v0, 0x7f0d0079

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterBtn(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityProduto$6;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto$6;-><init>(Lbr/com/macautomacao/maccomanda/ActivityProduto;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void
.end method

.method private BuscarDescricaoProduto()V
    .locals 2

    .prologue
    .line 202
    const v0, 0x7f0d0073

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityProduto$7;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto$7;-><init>(Lbr/com/macautomacao/maccomanda/ActivityProduto;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 224
    return-void
.end method

.method private ChamarThreadWsBuscaDescricaoProduto(Ljava/lang/String;)V
    .locals 6
    .param p1, "codigo"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 236
    new-instance v2, Lbr/com/macautomacao/maccomanda/Webservice;

    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lbr/com/macautomacao/maccomanda/Webservice;-><init>(Landroid/content/Context;)V

    .line 239
    .local v2, "ws":Lbr/com/macautomacao/maccomanda/Webservice;
    :try_start_0
    invoke-virtual {v2, p1}, Lbr/com/macautomacao/maccomanda/Webservice;->ConsultarChaveProduto(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 240
    .local v1, "produtos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeProduto;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 241
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    iput-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->produto:Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    .line 242
    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->produto:Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    invoke-virtual {v3}, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->getDescricao()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->descricaoProduto:Ljava/lang/String;

    .line 249
    :goto_0
    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->handlerDescricaoProduto:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 256
    .end local v1    # "produtos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeProduto;>;"
    :goto_1
    return-void

    .line 245
    .restart local v1    # "produtos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeProduto;>;"
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->produto:Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    .line 246
    const-string v3, ""

    iput-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->descricaoProduto:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 251
    .end local v1    # "produtos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeProduto;>;"
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 254
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private ClicarAdicionarObs()V
    .locals 2

    .prologue
    .line 48
    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterBtn(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityProduto$1;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto$1;-><init>(Lbr/com/macautomacao/maccomanda/ActivityProduto;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method private Continuar()V
    .locals 2

    .prologue
    .line 121
    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterBtn(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityProduto$4;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto$4;-><init>(Lbr/com/macautomacao/maccomanda/ActivityProduto;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method private DiminiurQuantidade()V
    .locals 2

    .prologue
    .line 163
    const v0, 0x7f0d0077

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterBtn(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityProduto$5;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto$5;-><init>(Lbr/com/macautomacao/maccomanda/ActivityProduto;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method

.method private ExibirTeclado()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-boolean v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->_ocultouTeclado:Z

    if-nez v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 154
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 155
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 156
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 159
    :cond_1
    iput-boolean v2, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->_ocultouTeclado:Z

    goto :goto_0
.end method

.method private Finalizar()V
    .locals 2

    .prologue
    .line 93
    const v0, 0x7f0d0068

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterBtn(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityProduto$3;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto$3;-><init>(Lbr/com/macautomacao/maccomanda/ActivityProduto;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method private ObterQtd()I
    .locals 1

    .prologue
    .line 191
    const v0, 0x7f0d0078

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterLbl(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private OcultarTeclado()V
    .locals 3

    .prologue
    .line 195
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 196
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const v1, 0x7f0d0073

    invoke-virtual {p0, v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->_ocultouTeclado:Z

    .line 199
    return-void
.end method

.method static synthetic access$000(Lbr/com/macautomacao/maccomanda/ActivityProduto;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityProduto;

    .prologue
    .line 26
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->_obs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lbr/com/macautomacao/maccomanda/ActivityProduto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityProduto;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->_obs:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lbr/com/macautomacao/maccomanda/ActivityProduto;)Lbr/com/macautomacao/maccomanda/EntidadeProduto;
    .locals 1
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityProduto;

    .prologue
    .line 26
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->produto:Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    return-object v0
.end method

.method static synthetic access$102(Lbr/com/macautomacao/maccomanda/ActivityProduto;Lbr/com/macautomacao/maccomanda/EntidadeProduto;)Lbr/com/macautomacao/maccomanda/EntidadeProduto;
    .locals 0
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityProduto;
    .param p1, "x1"    # Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    .prologue
    .line 26
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->produto:Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    return-object p1
.end method

.method static synthetic access$200(Lbr/com/macautomacao/maccomanda/ActivityProduto;)I
    .locals 1
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityProduto;

    .prologue
    .line 26
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterQtd()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lbr/com/macautomacao/maccomanda/ActivityProduto;)V
    .locals 0
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityProduto;

    .prologue
    .line 26
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ExibirTeclado()V

    return-void
.end method

.method static synthetic access$400(Lbr/com/macautomacao/maccomanda/ActivityProduto;)V
    .locals 0
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityProduto;

    .prologue
    .line 26
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->OcultarTeclado()V

    return-void
.end method

.method static synthetic access$500(Lbr/com/macautomacao/maccomanda/ActivityProduto;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityProduto;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ChamarThreadWsBuscaDescricaoProduto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lbr/com/macautomacao/maccomanda/ActivityProduto;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityProduto;

    .prologue
    .line 26
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto;->descricaoProduto:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 277
    invoke-super {p0, p1, p2, p3}, Lbr/com/macautomacao/maccomanda/UtilActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 279
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 280
    invoke-static {}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->getCodigoSelecionado()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 281
    const v0, 0x7f0d0073

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->getCodigoSelecionado()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".0"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->Finalizar()V

    .line 39
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->Continuar()V

    .line 40
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->AbrirBuscaProdutos()V

    .line 41
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->BuscarDescricaoProduto()V

    .line 42
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->AumentarQuantidade()V

    .line 43
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->DiminiurQuantidade()V

    .line 44
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ClicarAdicionarObs()V

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 261
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 272
    .local v0, "id":I
    invoke-super {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
