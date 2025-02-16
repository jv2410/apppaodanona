.class Lbr/com/macautomacao/maccomanda/ActivityProduto$1;
.super Ljava/lang/Object;
.source "ActivityProduto.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityProduto;->ClicarAdicionarObs()V
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
    .line 48
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, "txtObs":Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 55
    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v3, 0x7f07004f

    invoke-virtual {v2, v3}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v3, 0x7f070034

    invoke-virtual {v2, v3}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbr/com/macautomacao/maccomanda/ActivityProduto$1$1;

    invoke-direct {v3, p0, v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto$1$1;-><init>(Lbr/com/macautomacao/maccomanda/ActivityProduto$1;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    const v3, 0x7f070038

    invoke-virtual {v2, v3}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbr/com/macautomacao/maccomanda/ActivityProduto$1$2;

    invoke-direct {v3, p0}, Lbr/com/macautomacao/maccomanda/ActivityProduto$1$2;-><init>(Lbr/com/macautomacao/maccomanda/ActivityProduto$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 77
    return-void
.end method
