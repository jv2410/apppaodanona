.class Lbr/com/macautomacao/maccomanda/ActivityProduto$7;
.super Ljava/lang/Object;
.source "ActivityProduto.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityProduto;->BuscarDescricaoProduto()V
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
    .line 202
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$7;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 205
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$7;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v2, 0x7f0d0073

    invoke-virtual {v1, v2}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "codigo":Ljava/lang/String;
    invoke-static {v0}, Lbr/com/macautomacao/maccomanda/UtilTexto;->isInteger(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lbr/com/macautomacao/maccomanda/ActivityProduto$7$1;

    invoke-direct {v2, p0, v0}, Lbr/com/macautomacao/maccomanda/ActivityProduto$7$1;-><init>(Lbr/com/macautomacao/maccomanda/ActivityProduto$7;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 211
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$7;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$102(Lbr/com/macautomacao/maccomanda/ActivityProduto;Lbr/com/macautomacao/maccomanda/EntidadeProduto;)Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    .line 214
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$7;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v2, 0x7f0d0075

    invoke-virtual {v1, v2}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterLbl(I)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 219
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 222
    return-void
.end method
