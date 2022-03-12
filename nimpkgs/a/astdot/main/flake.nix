{
  description = ''Prints a dot graph of a nim ast dumped using the `dumpTree` macro.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-astdot-main.flake = false;
  inputs.src-astdot-main.owner = "Rekihyt";
  inputs.src-astdot-main.ref   = "refs/heads/main";
  inputs.src-astdot-main.repo  = "astdot";
  inputs.src-astdot-main.type  = "github";
  
  inputs."strings".owner = "nim-nix-pkgs";
  inputs."strings".ref   = "master";
  inputs."strings".repo  = "strings";
  inputs."strings".type  = "github";
  inputs."strings".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strings".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clapfn".owner = "nim-nix-pkgs";
  inputs."clapfn".ref   = "master";
  inputs."clapfn".repo  = "clapfn";
  inputs."clapfn".type  = "github";
  inputs."clapfn".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clapfn".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgraphviz".owner = "nim-nix-pkgs";
  inputs."nimgraphviz".ref   = "master";
  inputs."nimgraphviz".repo  = "nimgraphviz";
  inputs."nimgraphviz".type  = "github";
  inputs."nimgraphviz".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgraphviz".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-astdot-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-astdot-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}