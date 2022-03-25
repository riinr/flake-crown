{
  description = ''Cirru EDN loader in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cirru_edn-master.flake = false;
  inputs.src-cirru_edn-master.ref   = "refs/heads/master";
  inputs.src-cirru_edn-master.owner = "Cirru";
  inputs.src-cirru_edn-master.repo  = "cirru-edn.nim";
  inputs.src-cirru_edn-master.type  = "github";
  
  inputs."cirru_parser".owner = "nim-nix-pkgs";
  inputs."cirru_parser".ref   = "master";
  inputs."cirru_parser".repo  = "cirru_parser";
  inputs."cirru_parser".dir   = "v0_3_0";
  inputs."cirru_parser".type  = "github";
  inputs."cirru_parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirru_writer".owner = "nim-nix-pkgs";
  inputs."cirru_writer".ref   = "master";
  inputs."cirru_writer".repo  = "cirru_writer";
  inputs."cirru_writer".dir   = "v0_1_4";
  inputs."cirru_writer".type  = "github";
  inputs."cirru_writer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_writer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_edn-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-cirru_edn-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}