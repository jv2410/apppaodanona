.class Lbr/com/macautomacao/maccomanda/ActivityComanda$3;
.super Ljava/lang/Object;
.source "ActivityComanda.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityComanda;->Listar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/macautomacao/maccomanda/ActivityComanda;

.field final synthetic val$dialogSincronizacao:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityComanda;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/macautomacao/maccomanda/ActivityComanda;

    .prologue
    .line 69
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityComanda;

    iput-object p2, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda$3;->val$dialogSincronizacao:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 72
    :try_start_0
    new-instance v2, Lbr/com/macautomacao/maccomanda/Webservice;

    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityComanda;

    invoke-virtual {v3}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lbr/com/macautomacao/maccomanda/Webservice;-><init>(Landroid/content/Context;)V

    .line 76
    .local v2, "ws":Lbr/com/macautomacao/maccomanda/Webservice;
    invoke-static {}, Lbr/com/macautomacao/maccomanda/UtilComanda;->getComandaAtual()Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    move-result-object v3

    invoke-virtual {v3}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->getCartao()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/macautomacao/maccomanda/Webservice;->ListarProdutosDaComanda(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    .line 78
    .local v1, "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;>;"
    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityComanda;

    new-instance v4, Lbr/com/macautomacao/maccomanda/AdapterComanda;

    iget-object v5, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityComanda;

    invoke-virtual {v5}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f040020

    invoke-direct {v4, v5, v6}, Lbr/com/macautomacao/maccomanda/AdapterComanda;-><init>(Landroid/content/Context;I)V

    invoke-static {v3, v4}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->access$102(Lbr/com/macautomacao/maccomanda/ActivityComanda;Lbr/com/macautomacao/maccomanda/AdapterComanda;)Lbr/com/macautomacao/maccomanda/AdapterComanda;

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 81
    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityComanda;

    invoke-static {v3}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->access$100(Lbr/com/macautomacao/maccomanda/ActivityComanda;)Lbr/com/macautomacao/maccomanda/AdapterComanda;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbr/com/macautomacao/maccomanda/AdapterComanda;->add(Ljava/lang/Object;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityComanda;

    invoke-static {v3}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->access$300(Lbr/com/macautomacao/maccomanda/ActivityComanda;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "i":I
    .end local v1    # "lista":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;>;"
    .end local v2    # "ws":Lbr/com/macautomacao/maccomanda/Webservice;
    :goto_1
    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda$3;->val$dialogSincronizacao:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 90
    return-void

    .line 86
    :catch_0
    move-exception v3

    goto :goto_1
.end method
