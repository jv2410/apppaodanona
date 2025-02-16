.class public Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;
.super Ljava/lang/Object;
.source "EntidadeItemConsumido.java"


# instance fields
.field private enviado:Z

.field private observacao:Ljava/lang/String;

.field private produto:Lbr/com/macautomacao/maccomanda/EntidadeProduto;

.field private quantidade:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObservacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->observacao:Ljava/lang/String;

    return-object v0
.end method

.method public getProduto()Lbr/com/macautomacao/maccomanda/EntidadeProduto;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->produto:Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    return-object v0
.end method

.method public getQuantidade()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->quantidade:I

    return v0
.end method

.method public getTotalItem()Ljava/lang/Double;
    .locals 4

    .prologue
    .line 45
    iget v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->quantidade:I

    int-to-double v0, v0

    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->produto:Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    invoke-virtual {v2}, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->getValorUnitario()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public isEnviado()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->enviado:Z

    return v0
.end method

.method public setEnviado(Z)V
    .locals 0
    .param p1, "enviado"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->enviado:Z

    .line 34
    return-void
.end method

.method public setObservacao(Ljava/lang/String;)V
    .locals 0
    .param p1, "observacao"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->observacao:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setProduto(Lbr/com/macautomacao/maccomanda/EntidadeProduto;)V
    .locals 0
    .param p1, "produto"    # Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    .prologue
    .line 25
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->produto:Lbr/com/macautomacao/maccomanda/EntidadeProduto;

    .line 26
    return-void
.end method

.method public setQuantidade(I)V
    .locals 0
    .param p1, "quantidade"    # I

    .prologue
    .line 17
    iput p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeItemConsumido;->quantidade:I

    .line 18
    return-void
.end method
