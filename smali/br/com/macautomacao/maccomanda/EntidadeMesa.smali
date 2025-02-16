.class public Lbr/com/macautomacao/maccomanda/EntidadeMesa;
.super Ljava/lang/Object;
.source "EntidadeMesa.java"


# instance fields
.field private numero:I

.field private ocupada:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumero()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeMesa;->numero:I

    return v0
.end method

.method public isOcupada()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lbr/com/macautomacao/maccomanda/EntidadeMesa;->ocupada:Z

    return v0
.end method

.method public setNumero(I)V
    .locals 0
    .param p1, "numero"    # I

    .prologue
    .line 15
    iput p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeMesa;->numero:I

    .line 16
    return-void
.end method

.method public setOcupada(Z)V
    .locals 0
    .param p1, "ocupada"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lbr/com/macautomacao/maccomanda/EntidadeMesa;->ocupada:Z

    .line 24
    return-void
.end method
