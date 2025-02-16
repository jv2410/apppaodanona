.class Lbr/com/macautomacao/maccomanda/ActivityProduto$5;
.super Ljava/lang/Object;
.source "ActivityProduto.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityProduto;->DiminiurQuantidade()V
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
    .line 163
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$5;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 167
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$5;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$400(Lbr/com/macautomacao/maccomanda/ActivityProduto;)V

    .line 169
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$5;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$200(Lbr/com/macautomacao/maccomanda/ActivityProduto;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 170
    .local v0, "qtd":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 173
    :cond_0
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$5;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v2, 0x7f0d0078

    invoke-virtual {v1, v2}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterLbl(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method
