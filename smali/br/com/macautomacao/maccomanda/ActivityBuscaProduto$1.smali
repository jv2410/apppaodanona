.class Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$1;
.super Ljava/lang/Object;
.source "ActivityBuscaProduto.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->SelecionarItemClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

.field final synthetic val$lvwDados:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    .prologue
    .line 56
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    iput-object p2, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$1;->val$lvwDados:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "a":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$1;->val$lvwDados:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;

    .line 62
    .local v0, "codDesc":Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->access$000(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;)Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    move-result-object v1

    sget-object v2, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;->PRODUTOS:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    if-ne v1, v2, :cond_0

    .line 63
    invoke-virtual {v0}, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;->getCodigo()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->access$102(Ljava/lang/Double;)Ljava/lang/Double;

    .line 64
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    invoke-virtual {v1}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->finish()V

    .line 74
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    invoke-virtual {v0}, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;->getCodigo()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".0"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->access$202(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;I)I

    .line 67
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    sget-object v2, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;->PRODUTOS:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    invoke-static {v1, v2}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->access$002(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;)Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    .line 69
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    invoke-static {v1}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->access$300(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;)V

    goto :goto_0
.end method
