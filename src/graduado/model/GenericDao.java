package graduado.model;

import java.util.List;

public interface GenericDao<T> {
	public <String> T find(String id);
	public List<T> list();
	public void insert(T o);
	public void update(T o);
	public void delete(T o);
}