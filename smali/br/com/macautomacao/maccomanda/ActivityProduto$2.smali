.class Lbr/com/macautomacao/maccomanda/ActivityProduto$2;
.super Ljava/lang/Object;
.source "ActivityProduto.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityProduto;->AbrirBuscaProdutos()V
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
    .line 82
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const-class v2, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "busca":Landroid/content/Intent;
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->startActivityForResult(Landroid/content/Intent;I)V

    .line 87
    return-void
.end method
