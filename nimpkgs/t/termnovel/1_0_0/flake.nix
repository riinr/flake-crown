{
  description = ''A command that to read novel on terminal'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-termnovel-1_0_0.flake = false;
  inputs.src-termnovel-1_0_0.owner = "jiro4989";
  inputs.src-termnovel-1_0_0.ref   = "refs/tags/1.0.0";
  inputs.src-termnovel-1_0_0.repo  = "termnovel";
  inputs.src-termnovel-1_0_0.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown".owner = "nim-nix-pkgs";
  inputs."markdown".ref   = "master";
  inputs."markdown".repo  = "markdown";
  inputs."markdown".type  = "github";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery".owner = "nim-nix-pkgs";
  inputs."nimquery".ref   = "master";
  inputs."nimquery".repo  = "nimquery";
  inputs."nimquery".type  = "github";
  inputs."nimquery".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eastasianwidth".owner = "nim-nix-pkgs";
  inputs."eastasianwidth".ref   = "master";
  inputs."eastasianwidth".repo  = "eastasianwidth";
  inputs."eastasianwidth".type  = "github";
  inputs."eastasianwidth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eastasianwidth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment".owner = "nim-nix-pkgs";
  inputs."alignment".ref   = "master";
  inputs."alignment".repo  = "alignment";
  inputs."alignment".type  = "github";
  inputs."alignment".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-termnovel-1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-termnovel-1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}