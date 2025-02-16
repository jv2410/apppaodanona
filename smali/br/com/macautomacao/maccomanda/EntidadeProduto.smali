.class public Lbr/com/macautomacao/maccomanda/EntidadeProduto;
.super Ljava/lang/Object;
.source "EntidadeProduto.java"


# instance fields
.field private codigo:Ljava/lang/Double;

.field private descricao:Ljava/lang/String;

.field private valorUnitario:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodigo()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->codigo:Ljava/lang/Double;

    return-object v0
.end method

.method public getDescricao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->descricao:Ljava/lang/String;

    return-object v0
.end method

.method public getValorUnitario()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->valorUnitario:Ljava/lang/Double;

    return-object v0
.end method

.method public setCodigo(Ljava/lang/Double;)V
    .locals 0
    .param p1, "codigo"    # Ljava/lang/Double;

    .prologue
    .line 16
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->codigo:Ljava/lang/Double;

    .line 17
    return-void
.end method

.method public setDescricao(Ljava/lang/String;)V
    .locals 0
    .param p1, "descricao"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->descricao:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setValorUnitario(Ljava/lang/Double;)V
    .locals 0
    .param p1, "valorUnitario"    # Ljava/lang/Double;

    .prologue
    .line 32
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeProduto;->valorUnitario:Ljava/lang/Double;

    .line 33
    return-void
.end method
