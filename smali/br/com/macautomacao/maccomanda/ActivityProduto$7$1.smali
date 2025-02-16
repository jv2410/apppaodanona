.class Lbr/com/macautomacao/maccomanda/ActivityProduto$7$1;
.super Ljava/lang/Object;
.source "ActivityProduto.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityProduto$7;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbr/com/macautomacao/maccomanda/ActivityProduto$7;

.field final synthetic val$codigo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityProduto$7;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lbr/com/macautomacao/maccomanda/ActivityProduto$7;

    .prologue
    .line 207
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$7$1;->this$1:Lbr/com/macautomacao/maccomanda/ActivityProduto$7;

    iput-object p2, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$7$1;->val$codigo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$7$1;->this$1:Lbr/com/macautomacao/maccomanda/ActivityProduto$7;

    iget-object v0, v0, Lbr/com/macautomacao/maccomanda/ActivityProduto$7;->this$0:Lbr/com/macautomacao/maccomanda/ActivityProduto;

    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityProduto$7$1;->val$codigo:Ljava/lang/String;

    invoke-static {v0, v1}, Lbr/com/macautomacao/maccomanda/ActivityProduto;->access$500(Lbr/com/macautomacao/maccomanda/ActivityProduto;Ljava/lang/String;)V

    .line 210
    return-void
.end method
