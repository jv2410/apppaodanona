.class Lbr/com/macautomacao/maccomanda/ActivityCartao$2;
.super Ljava/lang/Object;
.source "ActivityCartao.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityCartao;->VerComandaClique()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/macautomacao/maccomanda/ActivityCartao;


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityCartao;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/macautomacao/maccomanda/ActivityCartao;

    .prologue
    .line 38
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityCartao$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityCartao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/ActivityCartao$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityCartao;

    const v3, 0x7f0d006a

    invoke-virtual {v2, v3}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "cartao":Ljava/lang/String;
    invoke-static {v0}, Lbr/com/macautomacao/maccomanda/UtilTexto;->isInteger(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/ActivityCartao$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityCartao;

    invoke-virtual {v2}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityCartao$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityCartao;

    const v4, 0x7f07003a

    invoke-virtual {v3, v4}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v2, Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    invoke-direct {v2}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;-><init>()V

    invoke-static {v2}, Lbr/com/macautomacao/maccomanda/UtilComanda;->setComandaAtual(Lbr/com/macautomacao/maccomanda/EntidadeComanda;)V

    .line 49
    invoke-static {}, Lbr/com/macautomacao/maccomanda/UtilComanda;->getComandaAtual()Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->setCartao(Ljava/lang/Integer;)V

    .line 51
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/ActivityCartao$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityCartao;

    const-class v3, Lbr/com/macautomacao/maccomanda/ActivityComanda;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v1, "comanda":Landroid/content/Intent;
    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/ActivityCartao$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityCartao;

    invoke-virtual {v2, v1}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
