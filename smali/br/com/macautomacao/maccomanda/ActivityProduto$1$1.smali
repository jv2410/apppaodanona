.class Lbr/com/macautomacao/maccomanda/ActivityProduto$1$1;
.super Ljava/lang/Object;
.source "ActivityProduto.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityProduto$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbr/com/macautomacao/maccomanda/ActivityProduto$1;

.field final synthetic val$txtObs:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityProduto$1;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lbr/com/macautomacao/maccomanda/ActivityProduto$1;

    .prologue
    .line 57
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$1$1;->this$1:Lbr/com/macautomacao/maccomanda/ActivityProduto$1;

    iput-object p2, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$1$1;->val$txtObs:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$1$1;->this$1:Lbr/com/macautomacao/maccomanda/ActivityProduto$1;

    iget-object v1, v1, Lbr/com/macautomacao/maccomanda/ActivityProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$1$1;->val$txtObs:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$002(Lbr/com/macautomacao/maccomanda/ActivityProduto;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$1$1;->this$1:Lbr/com/macautomacao/maccomanda/ActivityProduto$1;

    iget-object v1, v1, Lbr/com/macautomacao/maccomanda/ActivityProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-virtual {v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$1$1;->this$1:Lbr/com/macautomacao/maccomanda/ActivityProduto$1;

    iget-object v3, v3, Lbr/com/macautomacao/maccomanda/ActivityProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v4, 0x7f070047

    invoke-virtual {v3, v4}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
