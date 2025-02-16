.class public Lbr/com/macautomacao/maccomanda/EntidadeComanda;
.super Ljava/lang/Object;
.source "EntidadeComanda.java"


# instance fields
.field private atendente:Ljava/lang/Integer;

.field private cartao:Ljava/lang/Integer;

.field private itens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;",
            ">;"
        }
    .end annotation
.end field

.field private mesa:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->setItens(Ljava/util/ArrayList;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getAtendente()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->atendente:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCartao()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->cartao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItens()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->itens:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMesa()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->mesa:I

    return v0
.end method

.method public getTotal()Ljava/lang/Double;
    .locals 6

    .prologue
    .line 53
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 55
    .local v1, "total":Ljava/lang/Double;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->itens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 56
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->itens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;

    invoke-virtual {v2}, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->getTotalItem()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-object v1
.end method

.method public setAtendente(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "atendente"    # Ljava/lang/Integer;

    .prologue
    .line 49
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->atendente:Ljava/lang/Integer;

    .line 50
    return-void
.end method

.method public setCartao(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "cartao"    # Ljava/lang/Integer;

    .prologue
    .line 33
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->cartao:Ljava/lang/Integer;

    .line 34
    return-void
.end method

.method public setItens(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "itens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;>;"
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->itens:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public setMesa(I)V
    .locals 0
    .param p1, "mesa"    # I

    .prologue
    .line 25
    iput p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeComanda;->mesa:I

    .line 26
    return-void
.end method
