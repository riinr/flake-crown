{
  description = ''A sinatra-like web framework for Nim.'';
  inputs.src-jester-master.flake = false;
  inputs.src-jester-master.type = "github";
  inputs.src-jester-master.owner = "dom96";
  inputs.src-jester-master.repo = "jester";
  inputs.src-jester-master.ref = "refs/heads/master";
  
  
  inputs."httpbeast".url = "path:../../../h/httpbeast";
  inputs."httpbeast".type = "github";
  inputs."httpbeast".owner = "riinr";
  inputs."httpbeast".repo = "flake-nimble";
  inputs."httpbeast".ref = "flake-pinning";
  inputs."httpbeast".dir = "nimpkgs/h/httpbeast";

  outputs = { self, nixpkgs, src-jester-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jester-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jester-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}