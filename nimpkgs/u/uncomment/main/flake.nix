{
  description = ''uncomment the codes at the compile time'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-uncomment-main.flake = false;
  inputs.src-uncomment-main.owner = "hamidb80";
  inputs.src-uncomment-main.ref   = "refs/heads/main";
  inputs.src-uncomment-main.repo  = "uncomment";
  inputs.src-uncomment-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-uncomment-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-uncomment-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}