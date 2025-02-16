.class public Lbr/com/macautomacao/maccomanda/AdapterGridMesa;
.super Landroid/widget/BaseAdapter;
.source "AdapterGridMesa.java"


# instance fields
.field private _mesas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbr/com/macautomacao/maccomanda/EntidadeMesa;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lbr/com/macautomacao/maccomanda/EntidadeMesa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "mesas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeMesa;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/AdapterGridMesa;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lbr/com/macautomacao/maccomanda/AdapterGridMesa;->_mesas:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/AdapterGridMesa;->_mesas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    iget-object v5, p0, Lbr/com/macautomacao/maccomanda/AdapterGridMesa;->context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    .line 30
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 34
    .local v2, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_1

    .line 37
    const v5, 0x7f040021

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "gridView":Landroid/view/View;
    const v5, 0x7f0d007f

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 41
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lbr/com/macautomacao/maccomanda/AdapterGridMesa;->_mesas:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbr/com/macautomacao/maccomanda/EntidadeMesa;

    invoke-virtual {v5}, Lbr/com/macautomacao/maccomanda/EntidadeMesa;->getNumero()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "numero":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    const v5, 0x7f0d007e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 47
    .local v1, "imagem":Landroid/widget/ImageView;
    iget-object v5, p0, Lbr/com/macautomacao/maccomanda/AdapterGridMesa;->_mesas:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbr/com/macautomacao/maccomanda/EntidadeMesa;

    invoke-virtual {v5}, Lbr/com/macautomacao/maccomanda/EntidadeMesa;->isOcupada()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    const/high16 v5, 0x7f020000

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    .end local v1    # "imagem":Landroid/widget/ImageView;
    .end local v3    # "numero":Ljava/lang/String;
    .end local v4    # "textView":Landroid/widget/TextView;
    :goto_0
    return-object v0

    .line 50
    .restart local v1    # "imagem":Landroid/widget/ImageView;
    .restart local v3    # "numero":Ljava/lang/String;
    .restart local v4    # "textView":Landroid/widget/TextView;
    :cond_0
    const v5, 0x7f020057

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 55
    .end local v0    # "gridView":Landroid/view/View;
    .end local v1    # "imagem":Landroid/widget/ImageView;
    .end local v3    # "numero":Ljava/lang/String;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_1
    move-object v0, p2

    .restart local v0    # "gridView":Landroid/view/View;
    goto :goto_0
.end method
