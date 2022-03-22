{
  description = ''make anything async | always go async'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asyncanything-main.flake = false;
  inputs.src-asyncanything-main.ref   = "refs/heads/main";
  inputs.src-asyncanything-main.owner = "hamidb80";
  inputs.src-asyncanything-main.repo  = "asyncanything";
  inputs.src-asyncanything-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asyncanything-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-asyncanything-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}