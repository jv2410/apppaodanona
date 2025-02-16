.class public Lbr/com/macautomacao/maccomanda/ActivityComanda;
.super Lbr/com/macautomacao/maccomanda/UtilActivity;
.source "ActivityComanda.java"


# instance fields
.field private adapter:Lbr/com/macautomacao/maccomanda/AdapterComanda;

.field private atualizarListView:Landroid/os/Handler;

.field private lvwDados:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/UtilActivity;-><init>()V

    .line 53
    new-instance v0, Lbr/com/macautomacao/maccomanda/ActivityComanda$2;

    invoke-direct {v0, p0}, Lbr/com/macautomacao/maccomanda/ActivityComanda$2;-><init>(Lbr/com/macautomacao/maccomanda/ActivityComanda;)V

    iput-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda;->atualizarListView:Landroid/os/Handler;

    return-void
.end method

.method private Listar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    const v1, 0x7f070037

    invoke-virtual {p0, v1}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070053

    invoke-virtual {p0, v2}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v4, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 67
    .local v0, "dialogSincronizacao":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 69
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lbr/com/macautomacao/maccomanda/ActivityComanda$3;

    invoke-direct {v2, p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityComanda$3;-><init>(Lbr/com/macautomacao/maccomanda/ActivityComanda;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 91
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 93
    return-void
.end method

.method private SelecionarItemClick()V
    .locals 2

    .prologue
    .line 40
    const v1, 0x7f0d0069

    invoke-virtual {p0, v1}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 41
    .local v0, "lvwDados":Landroid/widget/ListView;
    new-instance v1, Lbr/com/macautomacao/maccomanda/ActivityComanda$1;

    invoke-direct {v1, p0}, Lbr/com/macautomacao/maccomanda/ActivityComanda$1;-><init>(Lbr/com/macautomacao/maccomanda/ActivityComanda;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lbr/com/macautomacao/maccomanda/ActivityComanda;)V
    .locals 0
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityComanda;

    .prologue
    .line 23
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->Listar()V

    return-void
.end method

.method static synthetic access$100(Lbr/com/macautomacao/maccomanda/ActivityComanda;)Lbr/com/macautomacao/maccomanda/AdapterComanda;
    .locals 1
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityComanda;

    .prologue
    .line 23
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda;->adapter:Lbr/com/macautomacao/maccomanda/AdapterComanda;

    return-object v0
.end method

.method static synthetic access$102(Lbr/com/macautomacao/maccomanda/ActivityComanda;Lbr/com/macautomacao/maccomanda/AdapterComanda;)Lbr/com/macautomacao/maccomanda/AdapterComanda;
    .locals 0
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityComanda;
    .param p1, "x1"    # Lbr/com/macautomacao/maccomanda/AdapterComanda;

    .prologue
    .line 23
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda;->adapter:Lbr/com/macautomacao/maccomanda/AdapterComanda;

    return-object p1
.end method

.method static synthetic access$200(Lbr/com/macautomacao/maccomanda/ActivityComanda;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityComanda;

    .prologue
    .line 23
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda;->lvwDados:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lbr/com/macautomacao/maccomanda/ActivityComanda;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lbr/com/macautomacao/maccomanda/ActivityComanda;

    .prologue
    .line 23
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda;->atualizarListView:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->setContentView(I)V

    .line 33
    const v0, 0x7f0d0069

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda;->lvwDados:Landroid/widget/ListView;

    .line 35
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->Listar()V

    .line 36
    invoke-direct {p0}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->SelecionarItemClick()V

    .line 37
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 98
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 110
    .local v0, "id":I
    const v1, 0x7f0d0080

    if-ne v0, v1, :cond_0

    .line 111
    const/4 v1, 0x1

    .line 114
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lbr/com/macautomacao/maccomanda/UtilActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
