.class Lbr/com/macautomacao/maccomanda/ActivityProduto$1$2;
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


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityProduto$1;)V
    .locals 0
    .param p1, "this$1"    # Lbr/com/macautomacao/maccomanda/ActivityProduto$1;

    .prologue
    .line 70
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$1$2;->this$1:Lbr/com/macautomacao/maccomanda/ActivityProduto$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 72
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 73
    return-void
.end method
