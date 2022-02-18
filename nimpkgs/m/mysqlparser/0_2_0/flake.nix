{
  description = ''An efficient packet parser for MySQL Client/Server Protocol. Help you to write Mysql communication in either BLOCKIONG-IO or NON-BLOCKING-IO.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mysqlparser-0_2_0.flake = false;
  inputs.src-mysqlparser-0_2_0.type = "github";
  inputs.src-mysqlparser-0_2_0.owner = "tulayang";
  inputs.src-mysqlparser-0_2_0.repo = "mysqlparser";
  inputs.src-mysqlparser-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mysqlparser-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mysqlparser-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mysqlparser-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}