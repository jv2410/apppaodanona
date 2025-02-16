.class public Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;
.super Landroid/app/Activity;
.source "ActivityBuscaProduto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;
    }
.end annotation


# static fields
.field private static codigoSelecionado:Ljava/lang/Double;


# instance fields
.field private adapterBusca:Landroid/widget/ArrayAdapter;

.field private atualizarListView:Landroid/os/Handler;

.field private categoriaSelecionada:I

.field private lvwDados:Landroid/widget/ListView;

.field private navegacao:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-instance v0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$2;

    invoke-direct {v0, p0}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$2;-><init>(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;)V

    iput-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->atualizarListView:Landroid/os/Handler;

    return-void
.end method

.method private Listar()V
    .locals 8

    .prologue
    .line 89
    :try_start_0
    new-instance v7, Lbr/com/macautomacao/maccomanda/Webservice;

    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Lbr/com/macautomacao/maccomanda/Webservice;-><init>(Landroid/content/Context;)V

    .line 92
    .local v7, "ws":Lbr/com/macautomacao/maccomanda/Webservice;
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->navegacao:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    sget-object v1, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;->CATEGORIAS:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    if-ne v0, v1, :cond_0

    .line 93
    invoke-virtual {v7}, Lbr/com/macautomacao/maccomanda/Webservice;->ListarCategorias()Ljava/util/ArrayList;

    move-result-object v4

    .line 97
    .local v4, "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;>;"
    :goto_0
    new-instance v0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$3;

    const v3, 0x1090003

    move-object v1, p0

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$3;-><init>(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;Landroid/content/Context;ILjava/util/List;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->adapterBusca:Landroid/widget/ArrayAdapter;

    .line 113
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->atualizarListView:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    .end local v4    # "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;>;"
    .end local v7    # "ws":Lbr/com/macautomacao/maccomanda/Webservice;
    :goto_1
    return-void

    .line 95
    .restart local v7    # "ws":Lbr/com/macautomacao/maccomanda/Webservice;
    :cond_0
    iget v0, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->categoriaSelecionada:I

    invoke-virtual {v7, v0}, Lbr/com/macautomacao/maccomanda/Webservice;->ListarProdutos(I)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .restart local v4    # "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;>;"
    goto :goto_0

    .line 116
    .end local v4    # "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;>;"
    .end local v7    # "ws":Lbr/com/macautomacao/maccomanda/Webservice;
    :catch_0
    move-exception v6

    .line 117
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 119
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private SelecionarItemClick()V
    .locals 2

    .prologue
    .line 55
    const v1, 0x7f0d0069

    invoke-virtual {p0, v1}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 56
    .local v0, "lvwDados":Landroid/widget/ListView;
    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$1;

    invoke-direct {v1, p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$1;-><init>(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;)Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;
    .locals 1
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->navegacao:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    return-object v0
.end method

.method static synthetic access$002(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;)Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;
    .locals 0
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;
    .param p1, "x1"    # Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    .prologue
    .line 21
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->navegacao:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    return-object p1
.end method

.method static synthetic access$102(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Double;

    .prologue
    .line 21
    sput-object p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->codigoSelecionado:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$202(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;I)I
    .locals 0
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->categoriaSelecionada:I

    return p1
.end method

.method static synthetic access$300(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;)V
    .locals 0
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    .prologue
    .line 21
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->Listar()V

    return-void
.end method

.method static synthetic access$400(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->adapterBusca:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->lvwDados:Landroid/widget/ListView;

    return-object v0
.end method

.method public static getCodigoSelecionado()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->codigoSelecionado:Ljava/lang/Double;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->navegacao:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    sget-object v1, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;->CATEGORIAS:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    if-ne v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->finish()V

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;->CATEGORIAS:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    iput-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->navegacao:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    .line 131
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->Listar()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->setContentView(I)V

    .line 44
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->codigoSelecionado:Ljava/lang/Double;

    .line 46
    const v0, 0x7f0d0069

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->lvwDados:Landroid/widget/ListView;

    .line 48
    sget-object v0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;->CATEGORIAS:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    iput-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->navegacao:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    .line 50
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->Listar()V

    .line 51
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->SelecionarItemClick()V

    .line 52
    return-void
.end method
