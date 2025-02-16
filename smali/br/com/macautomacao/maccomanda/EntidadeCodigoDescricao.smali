.class public Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;
.super Ljava/lang/Object;
.source "EntidadeCodigoDescricao.java"


# instance fields
.field private codigo:Ljava/lang/Double;

.field private descricao:Ljava/lang/String;


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
    .line 11
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;->codigo:Ljava/lang/Double;

    return-object v0
.end method

.method public getDescricao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;->descricao:Ljava/lang/String;

    return-object v0
.end method

.method public setCodigo(Ljava/lang/Double;)V
    .locals 0
    .param p1, "codigo"    # Ljava/lang/Double;

    .prologue
    .line 15
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;->codigo:Ljava/lang/Double;

    .line 16
    return-void
.end method

.method public setDescricao(Ljava/lang/String;)V
    .locals 0
    .param p1, "descricao"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeCodigoDescricao;->descricao:Ljava/lang/String;

    .line 24
    return-void
.end method
