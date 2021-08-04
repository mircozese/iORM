unit SampleData;

interface

type

  TSampleData = class
  public
    class procedure CreateSampleData(const AHowMany: Integer);
  end;

implementation

uses
  Model, iORM, System.SysUtils;

{ TSampleData }

class procedure TSampleData.CreateSampleData(const AHowMany: Integer);
var
  I: Integer;
  LArticle: TArticle;
begin
  LArticle := TArticle.Create;
  io.StartTransaction;
  try try
    for I := 1 to AHowMany do
    begin
      LArticle.Description := Format('Article %d', [I]);
      LArticle.Price := I;
      io.Persist(LArticle, True);
    end;
    io.CommitTransaction;
  finally
    LArticle.Free;
  end;
  except
    io.RollbackTransaction;
  end;
end;

end.
