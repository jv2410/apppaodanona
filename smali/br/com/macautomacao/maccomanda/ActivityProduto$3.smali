.class Lbr/com/macautomacao/maccomanda/ActivityProduto$3;
.super Ljava/lang/Object;
.source "ActivityProduto.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityProduto;->Finalizar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityProduto;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/macautomacao/maccomanda/ActivityProduto;

    .prologue
    .line 93
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 97
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v2, 0x7f0d0075

    invoke-virtual {v1, v2}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterLbl(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    .line 98
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-virtual {v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v3, 0x7f070052

    invoke-virtual {v2, v3}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 115
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v3, 0x7f070035

    invoke-virtual {v2, v3}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v4, 0x7f070053

    invoke-virtual {v3, v4}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 103
    .local v0, "dialogSincronizacao":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 105
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lbr/com/macautomacao/maccomanda/ActivityProduto$3$1;

    invoke-direct {v2, p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityProduto$3$1;-><init>(Lbr/com/macautomacao/maccomanda/ActivityProduto$3;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 114
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
