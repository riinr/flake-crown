{
  description = ''Homoiconic dynamic language interpreter in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-spryvm-master.flake = false;
  inputs.src-spryvm-master.ref   = "refs/heads/master";
  inputs.src-spryvm-master.owner = "gokr";
  inputs.src-spryvm-master.repo  = "spryvm";
  inputs.src-spryvm-master.type  = "github";
  
  inputs."python".owner = "nim-nix-pkgs";
  inputs."python".ref   = "master";
  inputs."python".repo  = "python";
  inputs."python".dir   = "";
  inputs."python".type  = "github";
  inputs."python".inputs.nixpkgs.follows = "nixpkgs";
  inputs."python".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ui".owner = "nim-nix-pkgs";
  inputs."ui".ref   = "master";
  inputs."ui".repo  = "ui";
  inputs."ui".dir   = "";
  inputs."ui".type  = "github";
  inputs."ui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."snappy".owner = "nim-nix-pkgs";
  inputs."snappy".ref   = "master";
  inputs."snappy".repo  = "snappy";
  inputs."snappy".dir   = "";
  inputs."snappy".type  = "github";
  inputs."snappy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-spryvm-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-spryvm-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}