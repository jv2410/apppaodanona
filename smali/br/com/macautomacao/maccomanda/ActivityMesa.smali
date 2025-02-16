.class public Lbr/com/macautomacao/maccomanda/ActivityMesa;
.super Lbr/com/macautomacao/maccomanda/UtilActivity;
.source "ActivityMesa.java"


# instance fields
.field adapterGridMesa:Lbr/com/macautomacao/maccomanda/AdapterGridMesa;

.field private atualizarGrid:Landroid/os/Handler;

.field gridView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/UtilActivity;-><init>()V

    .line 91
    new-instance v0, Lbr/com/macautomacao/maccomanda/ActivityMesa$3;

    invoke-direct {v0, p0}, Lbr/com/macautomacao/maccomanda/ActivityMesa$3;-><init>(Lbr/com/macautomacao/maccomanda/ActivityMesa;)V

    iput-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa;->atualizarGrid:Landroid/os/Handler;

    return-void
.end method

.method private Avancar(Ljava/lang/String;)V
    .locals 3
    .param p1, "mesa"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {}, Lbr/com/macautomacao/maccomanda/UtilComanda;->getComandaAtual()Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->setMesa(I)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/macautomacao/maccomanda/ActivityAtendente;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "atendente":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->finish()V

    .line 105
    return-void
.end method

.method private CarregarMesas()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070053

    invoke-virtual {p0, v2}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v4, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 55
    .local v0, "dialogSincronizacao":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 57
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lbr/com/macautomacao/maccomanda/ActivityMesa$2;

    invoke-direct {v2, p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityMesa$2;-><init>(Lbr/com/macautomacao/maccomanda/ActivityMesa;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 86
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method

.method private DefinirCliqueItemGrid()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa;->gridView:Landroid/widget/GridView;

    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityMesa$1;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityMesa$1;-><init>(Lbr/com/macautomacao/maccomanda/ActivityMesa;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lbr/com/macautomacao/maccomanda/ActivityMesa;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityMesa;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->Avancar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lbr/com/macautomacao/maccomanda/ActivityMesa;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityMesa;

    .prologue
    .line 22
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa;->atualizarGrid:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->setContentView(I)V

    .line 32
    const v0, 0x7f0d0072

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa;->gridView:Landroid/widget/GridView;

    .line 34
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->DefinirCliqueItemGrid()V

    .line 36
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->CarregarMesas()V

    .line 37
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 110
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 122
    .local v0, "id":I
    const v1, 0x7f0d0080

    if-ne v0, v1, :cond_0

    .line 123
    const/4 v1, 0x1

    .line 126
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
