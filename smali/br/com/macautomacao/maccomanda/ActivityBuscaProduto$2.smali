.class Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$2;
.super Landroid/os/Handler;
.source "ActivityBuscaProduto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    .prologue
    .line 79
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    invoke-static {v0}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->access$500(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->access$400(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    return-void
.end method
