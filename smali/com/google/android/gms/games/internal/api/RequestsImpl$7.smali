.class Lcom/google/android/gms/games/internal/api/RequestsImpl$7;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/RequestsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzajX:I

.field final synthetic zzajw:Ljava/lang/String;

.field final synthetic zzakL:Ljava/lang/String;

.field final synthetic zzakR:I

.field final synthetic zzakS:I


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzajw:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzakL:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzakR:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzakS:I

    iget v6, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->zzajX:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/zza$zzb;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method
