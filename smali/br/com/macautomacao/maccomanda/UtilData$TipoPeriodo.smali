.class public final enum Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;
.super Ljava/lang/Enum;
.source "UtilData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/macautomacao/maccomanda/UtilData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TipoPeriodo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

.field public static final enum Diario:Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

.field public static final enum Mensal:Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

.field public static final enum Quinzenal:Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

.field public static final enum Semanal:Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    const-string v1, "Diario"

    invoke-direct {v0, v1, v2}, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;->Diario:Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    new-instance v0, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    const-string v1, "Semanal"

    invoke-direct {v0, v1, v3}, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;->Semanal:Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    new-instance v0, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    const-string v1, "Quinzenal"

    invoke-direct {v0, v1, v4}, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;->Quinzenal:Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    new-instance v0, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    const-string v1, "Mensal"

    invoke-direct {v0, v1, v5}, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;->Mensal:Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    sget-object v1, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;->Diario:Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    aput-object v1, v0, v2

    sget-object v1, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;->Semanal:Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    aput-object v1, v0, v3

    sget-object v1, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;->Quinzenal:Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    aput-object v1, v0, v4

    sget-object v1, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;->Mensal:Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    aput-object v1, v0, v5

    sput-object v0, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;->$VALUES:[Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    return-object v0
.end method

.method public static values()[Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;->$VALUES:[Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    invoke-virtual {v0}, [Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/macautomacao/maccomanda/UtilData$TipoPeriodo;

    return-object v0
.end method
