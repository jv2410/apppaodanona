.class Lbr/com/macautomacao/maccomanda/ActivityProduto$3$1;
.super Ljava/lang/Object;
.source "ActivityProduto.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityProduto$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbr/com/macautomacao/maccomanda/ActivityProduto$3;

.field final synthetic val$dialogSincronizacao:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityProduto$3;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$1"    # Lbr/com/macautomacao/maccomanda/ActivityProduto$3;

    .prologue
    .line 105
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$3$1;->this$1:Lbr/com/macautomacao/maccomanda/ActivityProduto$3;

    iput-object p2, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$3$1;->val$dialogSincronizacao:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lbr/com/macautomacao/maccomanda/Webservice;

    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$3$1;->this$1:Lbr/com/macautomacao/maccomanda/ActivityProduto$3;

    iget-object v1, v1, Lbr/com/macautomacao/maccomanda/ActivityProduto$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-virtual {v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbr/com/macautomacao/maccomanda/Webservice;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "ws":Lbr/com/macautomacao/maccomanda/Webservice;
    invoke-virtual {v0}, Lbr/com/macautomacao/maccomanda/Webservice;->EnviarComanda()Ljava/lang/Boolean;

    .line 110
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$3$1;->val$dialogSincronizacao:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 112
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$3$1;->this$1:Lbr/com/macautomacao/maccomanda/ActivityProduto$3;

    iget-object v1, v1, Lbr/com/macautomacao/maccomanda/ActivityProduto$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-virtual {v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->finish()V

    .line 113
    return-void
.end method
