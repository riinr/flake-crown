{
  description = ''Tales of Maj'Eyal addon manager'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tam-master.flake = false;
  inputs.src-tam-master.owner = "SolitudeSF";
  inputs.src-tam-master.ref   = "refs/heads/master";
  inputs.src-tam-master.repo  = "tam";
  inputs.src-tam-master.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery".owner = "nim-nix-pkgs";
  inputs."nimquery".ref   = "master";
  inputs."nimquery".repo  = "nimquery";
  inputs."nimquery".type  = "github";
  inputs."nimquery".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tiny_sqlite".owner = "nim-nix-pkgs";
  inputs."tiny_sqlite".ref   = "master";
  inputs."tiny_sqlite".repo  = "tiny_sqlite";
  inputs."tiny_sqlite".type  = "github";
  inputs."tiny_sqlite".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tiny_sqlite".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tam-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tam-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}