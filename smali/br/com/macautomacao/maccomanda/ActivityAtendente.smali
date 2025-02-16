.class public Lbr/com/macautomacao/maccomanda/ActivityAtendente;
.super Lbr/com/macautomacao/maccomanda/UtilActivity;
.source "ActivityAtendente.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/UtilActivity;-><init>()V

    return-void
.end method

.method private Autenticar()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 53
    new-instance v4, Lbr/com/macautomacao/maccomanda/Webservice;

    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lbr/com/macautomacao/maccomanda/Webservice;-><init>(Landroid/content/Context;)V

    .line 56
    .local v4, "ws":Lbr/com/macautomacao/maccomanda/Webservice;
    const v5, 0x7f0d0065

    :try_start_0
    invoke-virtual {p0, v5}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "codigo":Ljava/lang/String;
    const v5, 0x7f0d0067

    invoke-virtual {p0, v5}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "senha":Ljava/lang/String;
    invoke-static {v0}, Lbr/com/macautomacao/maccomanda/UtilTexto;->isInteger(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 60
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f07003d

    invoke-virtual {p0, v6}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 83
    .end local v0    # "codigo":Ljava/lang/String;
    .end local v3    # "senha":Ljava/lang/String;
    :goto_0
    return-void

    .line 64
    .restart local v0    # "codigo":Ljava/lang/String;
    .restart local v3    # "senha":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Lbr/com/macautomacao/maccomanda/UtilTexto;->isInteger(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070055

    invoke-virtual {p0, v6}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v0    # "codigo":Ljava/lang/String;
    .end local v3    # "senha":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "codigo":Ljava/lang/String;
    .restart local v3    # "senha":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v4, v0, v3}, Lbr/com/macautomacao/maccomanda/Webservice;->Autenticar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 71
    .local v2, "logou":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lbr/com/macautomacao/maccomanda/UtilComanda;->setUltimoAtendente(I)V

    .line 73
    invoke-direct {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->Avancar(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070046

    invoke-virtual {p0, v6}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private Avancar(Ljava/lang/String;)V
    .locals 3
    .param p1, "codigo"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lbr/com/macautomacao/maccomanda/UtilComanda;->getComandaAtual()Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->setAtendente(Ljava/lang/Integer;)V

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "atendente":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->finish()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lbr/com/macautomacao/maccomanda/ActivityAtendente;)V
    .locals 0
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityAtendente;

    .prologue
    .line 12
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->Autenticar()V

    return-void
.end method

.method private btnFinalizarClique()V
    .locals 2

    .prologue
    .line 44
    const v0, 0x7f0d0068

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->ObterBtn(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityAtendente$2;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente$2;-><init>(Lbr/com/macautomacao/maccomanda/ActivityAtendente;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method private txtSenhaPressionarEnter()V
    .locals 2

    .prologue
    .line 30
    const v0, 0x7f0d0067

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityAtendente$1;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente$1;-><init>(Lbr/com/macautomacao/maccomanda/ActivityAtendente;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v1, 0x7f040019

    invoke-virtual {p0, v1}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->setContentView(I)V

    .line 19
    invoke-static {}, Lbr/com/macautomacao/maccomanda/UtilComanda;->getUltimoAtendente()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 20
    .local v0, "ultimoAtendente":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->Avancar(Ljava/lang/String;)V

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->btnFinalizarClique()V

    .line 26
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->txtSenhaPressionarEnter()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 97
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 109
    .local v0, "id":I
    const v1, 0x7f0d0080

    if-ne v0, v1, :cond_0

    .line 110
    const/4 v1, 0x1

    .line 113
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
