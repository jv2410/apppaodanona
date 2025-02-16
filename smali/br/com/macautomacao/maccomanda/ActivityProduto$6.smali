.class Lbr/com/macautomacao/maccomanda/ActivityProduto$6;
.super Ljava/lang/Object;
.source "ActivityProduto.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityProduto;->AumentarQuantidade()V
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
    .line 179
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$6;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$6;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-static {v0}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$400(Lbr/com/macautomacao/maccomanda/ActivityProduto;)V

    .line 185
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$6;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v1, 0x7f0d0078

    invoke-virtual {v0, v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterLbl(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$6;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$200(Lbr/com/macautomacao/maccomanda/ActivityProduto;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method
