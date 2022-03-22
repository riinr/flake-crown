{
  description = ''A higher-level wrapper for the Python Programing Language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pythonize-master.flake = false;
  inputs.src-pythonize-master.ref   = "refs/heads/master";
  inputs.src-pythonize-master.owner = "marcoapintoo";
  inputs.src-pythonize-master.repo  = "nim-pythonize";
  inputs.src-pythonize-master.type  = "github";
  
  inputs."python".owner = "nim-nix-pkgs";
  inputs."python".ref   = "master";
  inputs."python".repo  = "python";
  inputs."python".dir   = "";
  inputs."python".type  = "github";
  inputs."python".inputs.nixpkgs.follows = "nixpkgs";
  inputs."python".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pythonize-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pythonize-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}