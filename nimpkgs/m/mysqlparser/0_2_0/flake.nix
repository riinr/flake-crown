{
  description = ''An efficient packet parser for MySQL Client/Server Protocol. Help you to write Mysql communication in either BLOCKIONG-IO or NON-BLOCKING-IO.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mysqlparser-0_2_0.flake = false;
  inputs.src-mysqlparser-0_2_0.owner = "tulayang";
  inputs.src-mysqlparser-0_2_0.ref   = "0_2_0";
  inputs.src-mysqlparser-0_2_0.repo  = "mysqlparser.git";
  inputs.src-mysqlparser-0_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mysqlparser-0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mysqlparser-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}