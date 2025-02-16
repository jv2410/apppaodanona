.class final enum Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;
.super Ljava/lang/Enum;
.source "ActivityBuscaProduto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EnumNavegacao"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

.field public static final enum CATEGORIAS:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

.field public static final enum PRODUTOS:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    const-string v1, "CATEGORIAS"

    invoke-direct {v0, v1, v2}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;->CATEGORIAS:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    .line 34
    new-instance v0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    const-string v1, "PRODUTOS"

    invoke-direct {v0, v1, v3}, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;->PRODUTOS:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    sget-object v1, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;->CATEGORIAS:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    aput-object v1, v0, v2

    sget-object v1, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;->PRODUTOS:Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    aput-object v1, v0, v3

    sput-object v0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;->$VALUES:[Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    return-object v0
.end method

.method public static values()[Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;->$VALUES:[Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    invoke-virtual {v0}, [Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/macautomacao/maccomanda/ActivityBuscaProduto$EnumNavegacao;

    return-object v0
.end method
