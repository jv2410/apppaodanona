.class Lbr/com/macautomacao/maccomanda/ActivityComanda$2;
.super Landroid/os/Handler;
.source "ActivityComanda.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/macautomacao/maccomanda/ActivityComanda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/macautomacao/maccomanda/ActivityComanda;


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityComanda;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/macautomacao/maccomanda/ActivityComanda;

    .prologue
    .line 53
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityComanda;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityComanda;

    const v1, 0x7f0d0070

    invoke-virtual {v0, v1}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->ObterLbl(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lbr/com/macautomacao/maccomanda/UtilComanda;->getComandaAtual()Lbr/com/macautomacao/maccomanda/EntidadeComanda;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->getCartao()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityComanda;

    const v1, 0x7f0d006f

    invoke-virtual {v0, v1}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->ObterLbl(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityComanda;

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->access$100(Lbr/com/macautomacao/maccomanda/ActivityComanda;)Lbr/com/macautomacao/maccomanda/AdapterComanda;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/macautomacao/maccomanda/AdapterComanda;->getTotal()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/UtilMoeda;->Formatar(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityComanda;

    invoke-static {v0}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->access$200(Lbr/com/macautomacao/maccomanda/ActivityComanda;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityComanda$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityComanda;

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityComanda;->access$100(Lbr/com/macautomacao/maccomanda/ActivityComanda;)Lbr/com/macautomacao/maccomanda/AdapterComanda;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    return-void
.end method
