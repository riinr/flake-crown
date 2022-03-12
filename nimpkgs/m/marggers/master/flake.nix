{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-marggers-master.flake = false;
  inputs.src-marggers-master.owner = "metagn";
  inputs.src-marggers-master.ref   = "refs/heads/master";
  inputs.src-marggers-master.repo  = "marggers";
  inputs.src-marggers-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-marggers-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-marggers-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}