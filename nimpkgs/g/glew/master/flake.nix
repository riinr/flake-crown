{
  description = ''Autogenerated glew bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-glew-master.flake = false;
  inputs.src-glew-master.owner = "jyapayne";
  inputs.src-glew-master.ref   = "refs/heads/master";
  inputs.src-glew-master.repo  = "nim-glew";
  inputs.src-glew-master.type  = "github";
  
  inputs."https://github.com/jyapayne/nimterop".owner = "nim-nix-pkgs";
  inputs."https://github.com/jyapayne/nimterop".ref   = "master";
  inputs."https://github.com/jyapayne/nimterop".repo  = "https://github.com/jyapayne/nimterop";
  inputs."https://github.com/jyapayne/nimterop".type  = "github";
  inputs."https://github.com/jyapayne/nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/jyapayne/nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/jyapayne/nim-glfw".owner = "nim-nix-pkgs";
  inputs."https://github.com/jyapayne/nim-glfw".ref   = "master";
  inputs."https://github.com/jyapayne/nim-glfw".repo  = "https://github.com/jyapayne/nim-glfw";
  inputs."https://github.com/jyapayne/nim-glfw".type  = "github";
  inputs."https://github.com/jyapayne/nim-glfw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/jyapayne/nim-glfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-glew-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-glew-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}