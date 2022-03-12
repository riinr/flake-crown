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
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown".dir   = "nimpkgs/m/markdown";
  inputs."markdown".owner = "riinr";
  inputs."markdown".ref   = "flake-pinning";
  inputs."markdown".repo  = "flake-nimble";
  inputs."markdown".type  = "github";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery".dir   = "nimpkgs/n/nimquery";
  inputs."nimquery".owner = "riinr";
  inputs."nimquery".ref   = "flake-pinning";
  inputs."nimquery".repo  = "flake-nimble";
  inputs."nimquery".type  = "github";
  inputs."nimquery".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eastasianwidth".dir   = "nimpkgs/e/eastasianwidth";
  inputs."eastasianwidth".owner = "riinr";
  inputs."eastasianwidth".ref   = "flake-pinning";
  inputs."eastasianwidth".repo  = "flake-nimble";
  inputs."eastasianwidth".type  = "github";
  inputs."eastasianwidth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eastasianwidth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment".dir   = "nimpkgs/a/alignment";
  inputs."alignment".owner = "riinr";
  inputs."alignment".ref   = "flake-pinning";
  inputs."alignment".repo  = "flake-nimble";
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