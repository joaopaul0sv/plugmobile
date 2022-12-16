program plugmobile;

{$APPTYPE CONSOLE}

{$R *.res}

uses Horse, Horse.Jhonson;

begin
  THorse.Get('/filmes',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.SendFile('filmes.json');
    end);

  THorse.Listen(8888);
end.
