.class public Lbr/com/macautomacao/maccomanda/ActivityCartao;
.super Lbr/com/macautomacao/maccomanda/UtilActivity;
.source "ActivityCartao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/UtilActivity;-><init>()V

    return-void
.end method

.method private Confirmar()V
    .locals 5

    .prologue
    const v4, 0x7f0d006a

    .line 68
    invoke-virtual {p0, v4}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "cartao":Ljava/lang/String;
    invoke-static {v0}, Lbr/com/macautomacao/maccomanda/UtilTexto;->isInteger(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07003a

    invoke-virtual {p0, v3}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v2, Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    invoke-direct {v2}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;-><init>()V

    invoke-static {v2}, Lbr/com/macautomacao/maccomanda/UtilComanda;->setComandaAtual(Lbr/com/macautomacao/maccomanda/EntidadeComanda;)V

    .line 76
    invoke-static {}, Lbr/com/macautomacao/maccomanda/UtilComanda;->getComandaAtual()Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->setCartao(Ljava/lang/Integer;)V

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lbr/com/macautomacao/maccomanda/ActivityMesa;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v1, "mesas":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->startActivity(Landroid/content/Intent;)V

    .line 81
    invoke-virtual {p0, v4}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private ConfirmarClique()V
    .locals 2

    .prologue
    .line 59
    const v0, 0x7f0d006b

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->ObterBtn(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityCartao$3;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityCartao$3;-><init>(Lbr/com/macautomacao/maccomanda/ActivityCartao;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method private VerComandaClique()V
    .locals 2

    .prologue
    .line 38
    const v0, 0x7f0d006c

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->ObterBtn(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityCartao$2;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityCartao$2;-><init>(Lbr/com/macautomacao/maccomanda/ActivityCartao;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lbr/com/macautomacao/maccomanda/ActivityCartao;)V
    .locals 0
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityCartao;

    .prologue
    .line 11
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->Confirmar()V

    return-void
.end method

.method private txtCartaoPressionarEnter()V
    .locals 2

    .prologue
    .line 24
    const v0, 0x7f0d006a

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityCartao$1;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityCartao$1;-><init>(Lbr/com/macautomacao/maccomanda/ActivityCartao;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->setContentView(I)V

    .line 18
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->ConfirmarClique()V

    .line 19
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->VerComandaClique()V

    .line 20
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->txtCartaoPressionarEnter()V

    .line 21
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 87
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 99
    .local v1, "id":I
    const v2, 0x7f0d0080

    if-ne v1, v2, :cond_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "configuracoes":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->startActivity(Landroid/content/Intent;)V

    .line 102
    const/4 v2, 0x1

    .line 105
    .end local v0    # "configuracoes":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method
