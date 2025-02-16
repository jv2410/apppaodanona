.class Lbr/com/macautomacao/maccomanda/ActivityProduto$8;
.super Landroid/os/Handler;
.source "ActivityProduto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/macautomacao/maccomanda/ActivityProduto;
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
    .line 226
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$8;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$8;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v1, 0x7f0d0075

    invoke-virtual {v0, v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->ObterLbl(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$8;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$600(Lbr/com/macautomacao/maccomanda/ActivityProduto;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method
