.class public Lbr/com/macautomacao/maccomanda/AdapterComanda;
.super Landroid/widget/ArrayAdapter;
.source "AdapterComanda.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lbr/com/macautomacao/maccomanda/AdapterComanda;->mInflater:Landroid/view/LayoutInflater;

    .line 19
    return-void
.end method


# virtual methods
.method public getTotal()Ljava/lang/Double;
    .locals 6

    .prologue
    .line 45
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 47
    .local v1, "total":Ljava/lang/Double;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lbr/com/macautomacao/maccomanda/AdapterComanda;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 48
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/AdapterComanda;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;

    invoke-virtual {v2}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->getTotalItem()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lbr/com/macautomacao/maccomanda/AdapterComanda;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;

    .line 25
    .local v0, "item":Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;
    iget-object v5, p0, Lbr/com/macautomacao/maccomanda/AdapterComanda;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040020

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 27
    const v5, 0x7f0d0078

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 28
    .local v3, "lblQuantidade":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->getQuantidade()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->getProduto()Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    move-result-object v6

    invoke-virtual {v6}, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->getValorUnitario()Ljava/lang/Double;

    move-result-object v6

    invoke-static {v6}, Lbr/com/macautomacao/maccomanda/UtilMoeda;->Formatar(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    const v5, 0x7f0d0075

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 31
    .local v1, "lblDescricao":Landroid/widget/TextView;
    invoke-virtual {v0}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->getProduto()Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    move-result-object v5

    invoke-virtual {v5}, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->getDescricao()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const v5, 0x7f0d007d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 34
    .local v4, "lblTotalItem":Landroid/widget/TextView;
    invoke-virtual {v0}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->getTotalItem()Ljava/lang/Double;

    move-result-object v5

    invoke-static {v5}, Lbr/com/macautomacao/maccomanda/UtilMoeda;->Formatar(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const v5, 0x7f0d007c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 37
    .local v2, "lblObs":Landroid/widget/TextView;
    invoke-virtual {v0}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->getObservacao()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const/4 v5, -0x1

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    return-object p2
.end method
