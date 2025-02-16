.class public Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;
.super Lbr/com/macautomacao/maccomanda/UtilActivity;
.source "ActivityConfiguracoes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/UtilActivity;-><init>()V

    return-void
.end method

.method private CarregarConfiguracoes()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lbr/com/macautomacao/maccomanda/UtilPropriedades;

    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbr/com/macautomacao/maccomanda/UtilPropriedades;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "prop":Lbr/com/macautomacao/maccomanda/UtilPropriedades;
    const v1, 0x7f0d0071

    invoke-virtual {p0, v1}, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "Servidor"

    const-string v3, "Servidor"

    invoke-virtual {v0, v2, v3}, Lbr/com/macautomacao/maccomanda/UtilPropriedades;->Ler(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method private CarregarEventos()V
    .locals 2

    .prologue
    .line 22
    const v0, 0x7f0d0068

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;->ObterBtn(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes$1;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes$1;-><init>(Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method

.method private GravarConfiguracoes()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lbr/com/macautomacao/maccomanda/UtilPropriedades;

    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbr/com/macautomacao/maccomanda/UtilPropriedades;-><init>(Landroid/content/Context;)V

    .line 32
    .local v0, "prop":Lbr/com/macautomacao/maccomanda/UtilPropriedades;
    const-string v1, "Servidor"

    const v2, 0x7f0d0071

    invoke-virtual {p0, v2}, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbr/com/macautomacao/maccomanda/UtilPropriedades;->Gravar(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;->finish()V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;)V
    .locals 0
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;

    .prologue
    .line 9
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;->GravarConfiguracoes()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;->setContentView(I)V

    .line 16
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;->CarregarConfiguracoes()V

    .line 18
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;->CarregarEventos()V

    .line 19
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 46
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 58
    .local v0, "id":I
    const v1, 0x7f0d0080

    if-ne v0, v1, :cond_0

    .line 59
    const/4 v1, 0x1

    .line 62
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
