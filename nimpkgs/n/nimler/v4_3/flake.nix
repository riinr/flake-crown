{
  description = ''Erlang/Elixir NIFs for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimler-v4_3.flake = false;
  inputs.src-nimler-v4_3.owner = "wltsmrz";
  inputs.src-nimler-v4_3.ref   = "refs/tags/v4.3";
  inputs.src-nimler-v4_3.repo  = "nimler";
  inputs.src-nimler-v4_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimler-v4_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimler-v4_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}