.class Lbr/com/macautomacao/maccomanda/ActivityProduto$4;
.super Ljava/lang/Object;
.source "ActivityProduto.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityProduto;->Continuar()V
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
    .line 121
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$4;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0d0073

    .line 125
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$4;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$100(Lbr/com/macautomacao/maccomanda/ActivityProduto;)Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    move-result-object v1

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v0, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;

    invoke-direct {v0}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;-><init>()V

    .line 129
    .local v0, "item":Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->setEnviado(Z)V

    .line 130
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$4;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$100(Lbr/com/macautomacao/maccomanda/ActivityProduto;)Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->setProduto(Lbr/com/macautomacao/maccomanda/EntidadeProduto;)V

    .line 131
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$4;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$200(Lbr/com/macautomacao/maccomanda/ActivityProduto;)I

    move-result v1

    invoke-virtual {v0, v1}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->setQuantidade(I)V

    .line 132
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$4;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$000(Lbr/com/macautomacao/maccomanda/ActivityProduto;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->setObservacao(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lbr/com/macautomacao/maccomanda/UtilComanda;->getComandaAtual()Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->getItens()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$4;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$102(Lbr/com/macautomacao/maccomanda/ActivityProduto;Lbr/com/macautomacao/maccomanda/EntidadeProduto;)Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    .line 137
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$4;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v2, 0x7f0d0078

    invoke-virtual {v1, v2}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterLbl(I)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$4;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-virtual {v1, v3}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$4;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v2, 0x7f0d0075

    invoke-virtual {v1, v2}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterLbl(I)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$4;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const-string v2, ""

    invoke-static {v1, v2}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$002(Lbr/com/macautomacao/maccomanda/ActivityProduto;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$4;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-virtual {v1, v3}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterTxt(I)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 144
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$4;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$300(Lbr/com/macautomacao/maccomanda/ActivityProduto;)V

    goto :goto_0
.end method
