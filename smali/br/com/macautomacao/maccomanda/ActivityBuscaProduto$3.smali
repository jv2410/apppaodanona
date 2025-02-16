.class Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$3;
.super Landroid/widget/ArrayAdapter;
.source "ActivityBuscaProduto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;->Listar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

.field final synthetic val$lista:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;Landroid/content/Context;ILjava/util/List;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # Ljava/util/List;

    .prologue
    .line 97
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;

    iput-object p5, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$3;->val$lista:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, "view":Landroid/view/View;
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$3;->val$lista:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;

    invoke-virtual {v2}, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;->getDescricao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    return-object v1
.end method
